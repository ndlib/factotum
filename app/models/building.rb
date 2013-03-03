class Building < ActiveRecord::Base
  validates :name, :search_code, presence: true
  validates :search_code, uniqueness: true
  
  has_many :map_files, class_name: 'Maps::MapFile'

  def new_map_file(*args)
    if args.empty?
      map_files.build
    else
      map_files.build(*args)
    end
  end


  def map_file(id)
    map_files.find(id)
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