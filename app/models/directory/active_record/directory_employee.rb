class DirectoryEmployee < ActiveRecord::Base

  attr_reader :superiors

  belongs_to :employee_rank, :class_name => "DirectoryEmployeeRank"
  belongs_to :employee_status, :class_name => "DirectoryEmployeeStatus"
  
  has_many :subordinates, :class_name => DirectoryEmployee, :foreign_key => "supervisor_id"
  belongs_to :supervisor, :class_name => DirectoryEmployee

  has_many :contact_informations, as: :contactable
  has_many :phones, as: :contactable
  has_many :addresses, as: :contactable
  has_many :employee_units, :class_name => "DirectoryEmployeeUnit"
  has_many :organizational_units, :class_name => "DirectoryOrganizationalUnit", through: :employee_units
  
  default_scope { where("status_id != '10'") }

  scope :sorted, -> { self.order(:last_name, :first_name) }

  before_validation :clean_netid

  NETID_REGEXP = /^[a-z0-9]+$/

  validates :netid,
            :presence => true,
            :uniqueness => true,
            :format => { :with => NETID_REGEXP}
  

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


  def self.get_superiors(employee)
    @@all_superiors ||= []
    if employee.supervisor.blank?
      return @@all_superiors
    else
      @@all_superiors << employee.supervisor || self
      get_superiors(employee.supervisor)
    end
  end


  def superiors
    @superiors = DirectoryEmployee.get_superiors(self)
    @@all_superiors = []
    @superiors
  end

  
  def self_and_descendents
    [self] + descendents
  end

  private

    def clean_netid
      self.netid = self.netid.to_s.strip.downcase
    end


end
