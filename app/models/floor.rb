class Floor < ActiveRecord::Base
  validates :name, :library, presence: true
  
  belongs_to :library  


  def library_name
    library.name
  end
end 