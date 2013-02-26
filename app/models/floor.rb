class Floor < ActiveRecord::Base
  validates :name, :library, presence: true
  
  belongs_to :library 
  has_many :map_file

  def self.options_for_map_file_form
    self.order(:library_id).order(:name)
  end

  def option_name
    "#{library.name}: #{name}"
  end
end 