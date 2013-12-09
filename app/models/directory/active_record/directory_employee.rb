class DirectoryEmployee < ActiveRecord::Base

  attr_reader :principles

  belongs_to :employee_rank, class_name: DirectoryEmployeeRank, :foreign_key => "rank_id"
  belongs_to :employee_status, class_name: DirectoryEmployeeStatus, :foreign_key => "status_id"
  belongs_to :supervisor, class_name: DirectoryEmployee
  has_many :subordinates, class_name: DirectoryEmployee, :foreign_key => "supervisor_id"
  has_many :phones, as: :contactable, class_name: DirectoryContactPhone
  has_many :addresses, as: :contactable, class_name: DirectoryContactAddress
  has_many :emails, as: :contactable, class_name: DirectoryContactEmail
  has_many :faxes, as: :contactable, class_name: DirectoryContactFax
  has_many :employee_units, class_name: DirectoryEmployeeUnit, :foreign_key => "employee_id"
  has_many :organizational_units, class_name: DirectoryOrganizationalUnit, through: :employee_units
  has_many :selector_subjects, class_name: DirectorySelectorSubject, :foreign_key => "employee_id"
  has_many :subjects, class_name: DirectorySubject, through: :selector_subjects 
  has_many :departments, :class_name => "DirectoryDepartment", through: :employee_units
  has_many :library_committees, :class_name => "DirectoryLibraryCommittee", through: :employee_units

  accepts_nested_attributes_for :employee_units, :allow_destroy => true

  
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

  private

    def clean_netid
      self.netid = self.netid.to_s.strip.downcase
    end

end
