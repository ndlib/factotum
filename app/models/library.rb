class Library < ActiveRecord::Base
  validates :name, :code, presence: true
  validates :code, uniqueness: true

  has_many :floors
  
  def self.hesburgh_library
    self.where(code: 'hesburgh').first
  end
end