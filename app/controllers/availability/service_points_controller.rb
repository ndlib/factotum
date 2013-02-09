class Availability::ServicePointsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @service_points = Availability::ServicePoint.all
  end

end