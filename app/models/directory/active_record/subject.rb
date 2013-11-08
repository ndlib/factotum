class Directory::Subject < ActiveRecord::Base
  
  has_many :selector_subjects, :class_name => Directory::SelectorSubject

  validates :name, presence: true 
  validates_uniqueness_of :name

  def self.sorted
    order(:name)
  end


end
