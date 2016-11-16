class Maps::BuildingsController < ApplicationController
  before_filter :authenticate_user!


  def index
    @buildings = Building.all
  end

  def new
    @building = Building.new
    respond_to do |format|
      format.html
    end
  end


  def create
    @building = Building.new(building_params)
    respond_to do |format|
      if @building.save
  		flash[:success]	= "#{@building.name} has been created."
        format.html { redirect_to(maps_buildings_path) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  private

  def building_params
    params.require(:building).permit!
  end

end
