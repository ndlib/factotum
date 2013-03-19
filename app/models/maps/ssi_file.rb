class Maps::SsiFile
  attr_reader :floor_map

  def initialize(floor_map)
    @floor_map = floor_map
  end


  def write
    file_writer.write("/maps/floor_maps/ssi_file",  { floor_map: floor_map })
  end


  private

    def file_writer
      @file_writer ||= SSIFileWriter.new('floor_map', floor_map.name)
    end

end

