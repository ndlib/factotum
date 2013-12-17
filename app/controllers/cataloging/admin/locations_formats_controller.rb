class Cataloging::Admin::LocationsFormatsController < Cataloging::AdminController
  before_filter :authenticate_user!

  layout "generic_modal"

  def new
    location = Cataloging::Location.find(params[:location_id])

    @location_format = location.location_format.new
  end


  def create
    @location = Cataloging::Location.find(params[:location_id])
    format = Cataloging::Format.find(params[:cataloging_format][:id])

    @location.formats << format unless @location.formats.include?(format)
    flash.now[:success] = "This format has been added."
    
    @available_formats = Cataloging::Format.available_for_location(@location).collect {|lf| [ lf.name, lf.id ] }
    render "index"
  end


  def destroy

    @location = Cataloging::Location.find(params[:location_id])

    @format = Cataloging::Format.find(params[:id])
    @location.formats.destroy(@format)

    flash.now[:success] = "Your delete has been successful."
    

    @available_formats = Cataloging::Format.available_for_location(@location).collect {|lf| [ lf.name, lf.id ] }
    render "index"

  end
  

  def index

    @location = Cataloging::Location.find(params[:location_id])

    @available_formats = Cataloging::Format.available_for_location(@location).collect {|lf| [ lf.name, lf.id ] }

  end 


end
