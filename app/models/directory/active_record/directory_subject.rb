class DirectorySubject < ActiveRecord::Base
  
  has_many :selector_subjects, :class_name => DirectorySelectorSubject

  validates :name, presence: true 
  validates_uniqueness_of :name

  def self.sorted
    order(:name)
  end


end
