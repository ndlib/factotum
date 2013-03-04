class Building < ActiveRecord::Base
  validates :name, :search_code, presence: true
  validates :search_code, uniqueness: true
   
  has_many :floor_maps, class_name: 'Maps::FloorMap'

  def self.alphabetical
    order(:name)
  end

  def new_floor_map(*args)
    if args.empty?
      floor_maps.build
    else
      floor_maps.build(*args)
    end
  end


  def floor_map(id)
    floor_maps.find(id)
  end


  def list_floor_maps
    floor_maps.ordered_by_floor
  end


  def map_for_floor(floor)
    floor_maps.map_for_floor(floor)
  end

  def add_file(file)
    file.save
  end

  
  def self.hesburgh_library
    self.where(search_code: 'hesburgh').first
  end


  def self.search_for_building(search_code)
    self.where(search_code: search_code).first
  end
end
