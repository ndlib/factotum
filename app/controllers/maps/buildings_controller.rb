class Maps::BuildingsController < ApplicationController
  before_filter :authenticate_user!


  def index
    @buildings = Building.all
  end


end