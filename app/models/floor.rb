class Floor < ActiveRecord::Base
  validates :name, :library, presence: true
  
  belongs_to :library  
end 