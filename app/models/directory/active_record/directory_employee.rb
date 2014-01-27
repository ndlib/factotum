class DirectoryEmployee < ActiveRecord::Base

  attr_reader :principles

  belongs_to :employee_rank, class_name: DirectoryEmployeeRank, :foreign_key => "rank_id"
  belongs_to :employee_status, class_name: DirectoryEmployeeStatus, :foreign_key => "status_id"
  belongs_to :supervisor, class_name: DirectoryEmployee
  has_many :subordinates, class_name: DirectoryEmployee, :foreign_key => "supervisor_id"
  
  has_many :contact_informations, as: :contactable, class_name: DirectoryContactInformation
  has_many :phones, as: :contactable, class_name: DirectoryContactPhone
  has_many :addresses, as: :contactable, class_name: DirectoryContactAddress
  has_many :emails, as: :contactable, class_name: DirectoryContactEmail
  has_many :faxes, as: :contactable, class_name: DirectoryContactFax
  
  has_many :employee_units, class_name: DirectoryEmployeeUnit, :foreign_key => "employee_id"
  has_many :organizational_units, class_name: DirectoryOrganizationalUnit, through: :employee_units
  has_many :departments, :conditions => { :type => 'DirectoryDepartment' }, :class_name => "DirectoryDepartment", through: :employee_units
  has_many :library_committees, :conditions => { :type => 'DirectoryLibraryCommittee' }, :class_name => "DirectoryLibraryCommittee", through: :employee_units
  
  has_many :selector_subjects, class_name: DirectorySelectorSubject, :foreign_key => "employee_id"
  has_many :subjects, class_name: DirectorySubject, through: :selector_subjects 
  

  accepts_nested_attributes_for :employee_units, :allow_destroy => true
  accepts_nested_attributes_for :contact_informations, :allow_destroy => true, reject_if: proc { |attributes| attributes['contact_information'].blank? }
  accepts_nested_attributes_for :subjects, :reject_if => :all_blank
  
  default_scope { where("status_id != '10'") }
  scope :sorted, -> { self.order(:last_name, :first_name) }

  before_validation :clean_netid

  NETID_REGEXP = /^[a-z0-9]+$/

  validates :netid, :first_name, :last_name, :employee_status, :presence => true
  validates :netid, :uniqueness => true, :format => { :with => NETID_REGEXP}

  def to_s
    display_name.to_s
  end


  def display_name
    "#{last_name}, #{first_name}"
  end


  def first_last
    "#{first_name} #{last_name}"
  end


  def primary_email
    pe = nil
    self.emails.each do |email|
      if email.is_primary?
        pe = email.contact_information
        break
      end
    end
    pe
  end


  def primary_phone
    ph = nil
    self.phones.each do |phone|
      if phone.is_primary?
        ph = phone.contact_information
        break
      end
    end
    ph
  end


  def primary_address
    a = nil
    self.addresses.each do |address|
      if address.is_primary?
        a = address.contact_information
        break
      end
    end
    a
  end

  
  def departmental_units
    dept_units = []
    self.employee_units.each do |eu|
      begin
        eu.organizational_unit.type == 'DirectoryDepartment' ? dept_units.push(eu.organizational_unit) : next
      rescue
        next
      end
    end
    dept_units
  end

  
  def employee_unit_title(organizational_unit)
    self.employee_units.where(organizational_unit_id: organizational_unit.id).first.employee_unit_title
  end


  def load_ldap(ldap_employee)
    
    # figure out first, last name
    # sometimes may only be a display name
    if ldap_employee.last_name && ldap_employee.first_name
      self.first_name = ldap_employee.first_name
      self.last_name = ldap_employee.last_name
    elsif ldap_employee.display_name
      ar = ldap_employee.display_name.split(' ')
      self.first_name = ar.pop.to_s
      self.last_name = ar.last
    end

    # determine rank
    # for staff it's just the affiliation, for faculty (Librarians) it's the Title
    rank = DirectoryEmployeeRank.where(name: [ldap_employee.affiliation, ldap_employee.title]).first
    if rank.nil?
      self.rank_id = DirectoryEmployeeRank.first.id
    else
      self.rank_id = rank.id
    end

    # determine status - just default the first (Regular)
    self.status_id = DirectoryEmployeeStatus.first.id

    if self.save
      self.phones.build(contact_information: ldap_employee.phone, primary_method: true) if (ldap_employee.phone)
      self.emails.build(contact_information: ldap_employee.email, primary_method: true) if (ldap_employee.email)
      self.addresses.build(contact_information: ldap_employee.ndofficeaddress, primary_method: true) if (ldap_employee.ndofficeaddress)

      dept = DirectoryDepartment.where(name: ldap_employee.department).first
      self.employee_units.build(organizational_unit_id: dept.id, employee_unit_title: ldap_employee.title) if dept and ldap_employee.title
      
    end

  end  


  def load_ldap_employee_contact(ldap_employee)
    #contact information
  end


  def descendents
    subordinates.sorted.map do |sub|
      [sub] + sub.descendents
    end.flatten
  end


  def self.get_principles(employee)
    @@all_principles ||= []
    if employee.supervisor.blank?
      return @@all_principles
    else
      @@all_principles << employee.supervisor || self
      get_principles(employee.supervisor)
    end
  end


  def principles
    @principles = DirectoryEmployee.get_principles(self)
    @@all_principles = []
    @principles
  end

  
  def self_and_descendents
    [self] + descendents
  end


  def has_subjects?
    self.subjects.empty? ? false : true
  end


  def is_librarian?
    return employee_rank.name != "Staff"
  end



  private

    def clean_netid
      self.netid = self.netid.to_s.strip.downcase
    end

end
