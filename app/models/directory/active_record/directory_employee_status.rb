class DirectoryEmployeeStatus < ActiveRecord::Base
  
  validates :name, presence: true 
  validates_uniqueness_of :name

  def self.sorted
    order(:name)
  end


  

end
