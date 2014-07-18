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
  has_many :webpages, as: :contactable, class_name: DirectoryContactWebpage
  has_one :primary_address_information, as: :contactable, class_name: DirectoryContactAddress, conditions: { primary_method: true }
  has_one :primary_phone_information, as: :contactable, class_name: DirectoryContactPhone, conditions: { primary_method: true }
  has_one :primary_email_information, as: :contactable, class_name: DirectoryContactEmail, conditions: { primary_method: true }

  has_many :employee_units, class_name: DirectoryEmployeeUnit, :foreign_key => "employee_id"
  has_many :organizational_units, class_name: DirectoryOrganizationalUnit, through: :employee_units
  has_many :departments, :conditions => { :type => 'DirectoryDepartment' }, :class_name => "DirectoryDepartment", through: :employee_units
  #has_many :supervising_departments, :conditions => { :type => 'DirectoryDepartment' }, :class_name => "DirectoryDepartment",:conditions => {:head => "1"}, through: :employee_units
  has_many :departmental_units, through: :employee_units, source: :department, order: "head desc, name asc"
  has_many :library_teams, :conditions => { :type => 'DirectoryLibraryTeam' }, :class_name => "DirectoryLibraryTeam", through: :employee_units
  has_many :university_committees, :conditions => { :type => 'DirectoryUniversityCommittee' }, :class_name => "DirectoryUniversityCommittee", through: :employee_units

  has_many :selector_subjects, class_name: DirectorySelectorSubject, :foreign_key => "employee_id"
  has_many :subjects, class_name: DirectorySubject, through: :selector_subjects


  accepts_nested_attributes_for :employee_units, :allow_destroy => true
  accepts_nested_attributes_for :contact_informations, :allow_destroy => true, reject_if: proc { |attributes| attributes['contact_information'].blank? }
  accepts_nested_attributes_for :subjects, :reject_if => :all_blank

  default_scope { where("status_id = '1'") }
  scope :sorted, -> { self.order(:last_name, :first_name) }
  scope :current_employees, -> { where("status_id = '1'") }
  scope :by_netid, lambda { |netid| where("netid = \'#{netid}'") }
  scope :by_id, lambda { |id| where("id = \'#{id}'") }

  before_validation :clean_netid

  NETID_REGEXP = /^[a-z0-9]+$/

  validates :netid, :first_name, :last_name, :employee_status, :presence => true
  validates :netid, :uniqueness => true, :format => { :with => NETID_REGEXP}

  def self.first_letters
    all.map{|e| e.last_name[0]}.uniq
  end

  def self.search(params)
    started_date_start = Time.parse("1-#{params[:started_date_start]['month']}-#{params[:started_date_start]['year']}") if !params[:started_date_start]['month'].blank?
    started_date_start ||= Time.now - 100.years

    started_date_end = Time.parse("1-#{params[:started_date_end]['month']}-#{params[:started_date_end]['year']}") if !params[:started_date_end]['month'].blank?
    started_date_end ||= Time.now


    leave_date_start = Time.parse("1-#{params[:leave_date_start]['month']}-#{params[:leave_date_start]['year']}") if !params[:leave_date_start]['month'].blank?
    leave_date_start ||= Time.now - 100.years

    leave_date_end = Time.parse("1-#{params[:leave_date_end]['month']}-#{params[:leave_date_end]['year']}") if !params[:leave_date_end]['month'].blank?
    leave_date_end ||= Time.now


    results = unscoped
    results = results.by_status(params[:status_id]) unless params[:status_id].blank?
    results = results.started_between(started_date_start, started_date_end)
    results = results.left_between(leave_date_start, leave_date_end) unless params[:leave_date_start]['month'].blank? && params[:leave_date_end]['month'].blank?

    return results
  end


  def self.by_status(status_id_parm)
    where("status_id = ?", status_id_parm)
  end

  def self.started_between(started_date, end_date)
    where(start_date: started_date..end_date)

  end

  def self.left_between(start_date, end_date)
    where(leave_date: start_date..end_date.end_of_month)
  end



  def to_s
    display_name.to_s
  end


  def display_name
    "#{last_name}, #{first_name}"
  end


  def first_last
    "#{first_name} #{last_name}"
  end

  def name_title
    if !all_titles.empty? then
      "#{first_last}, #{all_titles.join(", ")}"
    else
      "#{first_last}"
    end
  end

  def to_param
    "#{self.netid}"
  end


  def primary_email
    primary_email_information ? primary_email_information.contact_information : nil
  end


  def primary_fax
    f = nil
    self.faxes.each do |fax|
      if fax.is_primary?
        f = fax.contact_information
        break
      end
    end
    f
  end

  def primary_phone
    primary_phone_information ? primary_phone_information.contact_information : nil
  end


  def primary_address
    primary_address_information ? primary_address_information.contact_information : nil
  end


  def primary_department
    @primary_department ||= self.departmental_units.first
  end


  def primary_title
    @primary_title ||= employee_unit_titles.detect{|t| t.present?}
  end

  def sorted_employee_units
    @sorted_employee_units ||= employee_units.sort{|a,b| b.head_sort <=> a.head_sort}
  end

  def employee_unit_titles
    @employee_unit_titles ||= sorted_employee_units.collect{|u| u.employee_unit_title}
  end


  def employee_unit_title(organizational_unit)
    employee_units.where(organizational_unit_id: organizational_unit.id).first.employee_unit_title if self.employee_units.exists?
  end


  def all_titles
    employee_units.select(:employee_unit_title).uniq.where("employee_unit_title is not null").pluck("employee_unit_title") if self.employee_units.exists?
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

  def self_and_descendents
    [self] + descendents
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


  def has_subjects?
    self.subjects.empty? ? false : true
  end

  def is_librarian?
    return employee_rank.name == "Faculty"
  end

  def is_manager?
    return subordinates.count > 0
  end

  # aliases and helpers to return json that is formatted the same as the old json
  def address
    return primary_address
  end
  def alt_email
    e = ""
    self.emails.each do |email|
      if  not email.is_primary?
        e = email.contact_information
        break
      end
    end
    return e
  end
  def alt_name
  end
  def cell
  end
  def date_end
    return leave_date
  end
  def date_start
    return start_date
  end
  def email
    return primary_email
  end
  def empID
    return id
  end
  def emp_url
    return "http://library.nd.edu/utilities/directory/employees/#{netid}"
  end
  def employee_status
  end
  def fname
    return first_name
  end
  def jobTitle
    return primary_title
  end
  def lib_start
    return start_date
  end
  def lname
    return last_name
  end
  def mail_addr
    return primary_address
  end
  def minitial
  end
  def netID
    return netid
  end
  def note
    return about_text
  end
  def phone
    return primary_phone
  end
  def pic
    if not hide_photo_ind
      return photo
    end
  end
  def rankID
    return rank_id
  end
  def retiree
    if not leave_date.nil?
      return 1
    else
      return ""
    end
  end
  def statusID
    return status_id
  end

  def as_json(options)
    super(:only => [], :methods => [ :address, :alt_email, :alt_name, :cell, :date_end, :date_start, :email, :empID, :emp_url, :employee_status, :fname, :jobTitle, :lib_start, :lname, :mail_addr, :minitial, :netID, :note, :phone, :pic, :rankID, :retiree, :statusID ])
    #super(:methods => [ :address, :alt_email, :alt_name, :cell, :date_end, :date_start, :email, :empID, :emp_url, :employee_status, :fname, :jobTitle, :lib_start, :lname, :mail_addr, :minitial, :netID, :note, :phone, :pic, :rankID, :retiree, :statusID ])
  end


  private

    def clean_netid
      self.netid = self.netid.to_s.strip.downcase
    end

end
