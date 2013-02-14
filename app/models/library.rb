class Library < ActiveRecord::Base
  validates :name, :code, presence: true
  validates :code, uniqueness: true

  has_many :floors
  
end