class Building < ActiveRecord::Base
  validates :name, :search_code, presence: true
  validates :search_code, uniqueness: true
  
  
  def self.hesburgh_library
    self.where(search_code: 'hesburgh').first
  end


  def self.search_for_building(search_code)
    self.where(search_code: search_code).first
  end
end