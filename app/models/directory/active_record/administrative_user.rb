class Directory::AdministrativeUser < ActiveRecord::Base
  # attr_accessible :title, :body

  validates :username, presence: true 
  validates_uniqueness_of :username

  def self.sorted
    order(:username)
  end




end
