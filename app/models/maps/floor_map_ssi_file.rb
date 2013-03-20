class Maps::FloorMapSsiFile
  attr_reader :floor_map

  def initialize(floor_map)
    @floor_map = floor_map
  end


  def write
    file_writer.write("/maps/floor_maps/ssi_file",  partial_locals)
  end


  private

    def file_writer
      @file_writer ||= SSIFileWriter.new('floor_maps', floor_map.name)
    end


    def partial_locals
      {
        floor_map: floor_map,
        image_url: "#{base_url}#{floor_map.map.url}"
      }
    end


    def base_url
      Rails.configuration.base_url
    end
end

