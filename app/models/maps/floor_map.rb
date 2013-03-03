class Maps::FloorMap < ActiveRecord::Base
  self.table_name = 'maps_floor_maps'

  validates :name, :search_code, :building, presence: true
  validates :file_file_name, presence: true

  has_attached_file :file, styles: { medium: "300x300>", thumb: "100x100>" }
  
  belongs_to :building  
  has_many :call_number_ranges


  def self.ordered_by_floor
    order(:name)
  end

  
  def self.map_for_floor_and_building(search_code, building)
    return nil if building.nil?

    where("#{self.table_name}.search_code = ? AND building_id = ?", search_code, building.id).joins(:building).first 
  end
  

  def self.map_for_callnumber_range(call_number, collection, sublibrary)  
    where().joins(:call_number_ranges)
  end


  def list_call_number_ranges
    call_number_ranges.ordered_call_number
  end 


  def call_number_range(id)
    call_number_ranges.find(id)
  end


  def new_call_number_range(*args)
    if args.empty?
      call_number_ranges.build
    else
      call_number_ranges.build(*args)
    end
  end
end