class Directory::OrganizationalUnit < ActiveRecord::Base

  belongs_to :department, :class_name => "Directory::Department"
  belongs_to :university_committee, :class_name => "Directory::UniversityCommittee"
  belongs_to :library_committee, :class_name => "Directory::LibraryCommittee"

  has_many :children_units, :class_name => Directory::OrganizationalUnit, :foreign_key => "parent_organizational_unit_id"
  belongs_to :parent_unit, :class_name => Directory::OrganizationalUnit

  has_many :contact_informations, as: :contactable
  has_many :employee_units, :class_name => "Directory::EmployeeUnit"

  validates :name, presence: true 
  validates_uniqueness_of :name


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

end
