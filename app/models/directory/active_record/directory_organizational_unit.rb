class DirectoryOrganizationalUnit < ActiveRecord::Base

  # has many through relationship with employees
  has_many :employee_units, class_name: DirectoryEmployeeUnit, :foreign_key => "organizational_unit_id"
  has_many :employees, class_name: DirectoryEmployee, through: :employee_units
  has_many :employees, class_name: DirectoryEmployee, through: :employee_units

  # sti organizational types
  belongs_to :department, :class_name => "DirectoryDepartment"
  belongs_to :library_committee, :class_name => "DirectoryLibraryCommittee"
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
    employee_units = DirectoryEmployeeUnit.where("head = 1 AND organizational_unit_id = ?", self.id)
    employee_units.each do |employee_unit|
      heads.push(DirectoryEmployee.find(employee_unit.employee_id))
    end
    return heads
  end




end
