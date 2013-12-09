class DirectoryEmployeeStatus < ActiveRecord::Base

  has_many :employees, class_name: DirectoryEmployee
  
  validates :name, presence: true 
  validates_uniqueness_of :name

  def self.sorted
    order(:name)
  end

end
