class Maps::FloorMapsPrintController < PrintController

  def show
    @floor_map = building.floor_map(params[:id])
    render :layout => 'print'
  end


  def print
    @floor_map = building.floor_map(params[:id])

    @pdf = UrlToPdfConverter.new(maps_building_floor_maps_print_url(building, @floor_map))

    @pdf.convert

    send_file(@pdf.pdf_path, :filename => "#{@floor_map.name}.pdf", :type => 'application/pdf')
  end



  private
    def maps_api
      @maps_api ||= MapsApi.new
    end


    def building
      @building ||= maps_api.building(params[:building_id])
    end

end
