class DirectoryOrganizationalUnit < ActiveRecord::Base

  # has many through relationship with employees
  has_many :employee_units, class_name: DirectoryEmployeeUnit, :foreign_key => "organizational_unit_id"
  has_many :employees, class_name: DirectoryEmployee, through: :employee_units

  # sti organizational types
  belongs_to :department, :class_name => "DirectoryDepartment"
  belongs_to :library_team, :class_name => "DirectoryLibraryTeam"
  belongs_to :university_committee, :class_name => "DirectoryUniversityCommittee"

  # sti contact types, contactable polymorphic class (employee or org unit)
  has_many :contact_informations, as: :contactable, class_name: DirectoryContactInformation
  has_many :phones, as: :contactable, class_name: DirectoryContactPhone
  has_many :addresses, as: :contactable, class_name: DirectoryContactAddress
  has_many :emails, as: :contactable, class_name: DirectoryContactEmail
  has_many :faxes, as: :contactable, class_name: DirectoryContactFax
  has_many :websites, as: :contactable, class_name: DirectoryContactWebpage

  # org unit hierarchy - should be applicable to departments only
  has_many :children_units, :class_name => DirectoryOrganizationalUnit, :foreign_key => "parent_organizational_unit_id"
  belongs_to :parent_unit, :class_name => DirectoryOrganizationalUnit

  validates :name, :type, presence: true
  validates_uniqueness_of :name


  def to_s
    name.to_s
  end


  def self.sorted
    self.order(:name)
  end


  def descendents
    children_units.sorted.map do |ch|
      [ch] + ch.descendents
    end.flatten
  end


  def self_and_descendents
    [self] + descendents
  end


  def heads
    heads = []
    employees = DirectoryEmployeeUnit.select("employee_id").where("head = 1 AND organizational_unit_id = ?", self.id).uniq
    employees.each do |employee|
      # hack here becayes there is a default scope on employee causes this find by status =1 and the
      # query above can find employees with other statuses.
      if emp = DirectoryEmployee.find_by_id(employee.employee_id)
        heads.push(emp)
      end
    end
    return heads
  end

  # aliases and helpers to return json that is formatted the same as the old json
  def asst_head_id
    h = 0
    if heads.count > 1
      h = heads[1].id.to_i
    end
    return h
  end

  def external_unit_URL
    return unitURL
  end

  def fax
    f = ""
    self.faxes.each do |fax|
      if fax.is_primary?
        f = fax.contact_information
        break
      end
    end
    return f
  end

  def headID
    h = 0
    if heads.count >= 1
      h = heads[0].id.to_i
    end
    return h
  end

  def part_ofID
    return parent_organizational_unit_id
  end

  def phone
    p = ""
    self.phones.each do |phone|
      if phone.is_primary?
        p = phone.contact_information
        break
      end
    end
    return p
  end

  def supervisor_id
  end

  def unitID
    return id
  end

  def unitName
    return name
  end

  def unitURL
     w = ""
    self.websites.each do |website|
      if website.is_primary?
        w = website.contact_information
        break
      end
    end
    return w
  end

  def unit_url
    "#{Rails.configuration.library_url}#{unit_path}"
  end

  def unit_path
    Rails.application.routes.url_helpers.directory_department_path(id)
  end

  def as_json(options)
    super(:only => [], :methods => [ :asst_head_id, :external_unit_URL, :fax, :headID, :part_ofID, :phone, :supervisor_id, :unitID, :unitName, :unitURL, :unit_url ])
    #super(:methods => [ :asst_head_id, :external_unit_URL, :fax, :headID, :part_ofID, :phone, :supervisor_id, :unitID, :unitName, :unitURL, :unit_url ])
  end

end
