class DirectoryEmployeeRank < ActiveRecord::Base
  
  validates :name, presence: true 
  validates_uniqueness_of :name

  def self.sorted
    order(:name)
  end

  def to_s
  	name
  end
  
end
