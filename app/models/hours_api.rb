class HoursApi

  def initialize
    @service_point_fetcher = Availablity::ServicePoint.public_method(:all)
  end


  def ServicePoint(id)
    Availablity::ServicePoint.find(id)
  end


  def service_points
    @service_point_fetcher.()
  end


  def list_buildings
    service_points
  end


  def api_services_from_request(params)

  end


  private


end
