class Maps::FloorMap < ActiveRecord::Base
  self.table_name = 'maps_floor_maps'

  validates :name, :search_code, :building, :floor_number, presence: true
  validates :map_file_name, presence: true

  has_attached_file :map, styles: { medium: "300x300>", thumb: "100x100>" }
  
  belongs_to :building  
  has_many :call_number_ranges


  def self.ordered_by_floor
    order(:floor_number)
  end

  
  def self.map_for_floor(search_code)

    where("#{self.table_name}.search_code = ?", search_code).first 
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