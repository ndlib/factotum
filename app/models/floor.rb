class Floor < ActiveRecord::Base
  validates :name, :library, presence: true
  
  belongs_to :library 
  has_many :map_file

  def self.find_floor_from_api_params(floor, library)
    if !library
      library = 'hesburgh'
    end

    where(name: floor.downcase).joins(:library).where('libraries.code' => library.downcase)
  end


  def self.options_for_map_file_form
    self.order(:library_id).order(:name)
  end


  def option_name
    "#{library.name}: #{name}"
  end
  
end 