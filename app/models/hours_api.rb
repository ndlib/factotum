class HoursApi

  def initialize(request)
    @service_point_fetcher = Availability::ServicePoint.public_method(:all)
    @request = request
  end


  def service_point(id)
    Availability::ServicePoint.find(id)
  end


  def service_points
    fetch_service_points
  end


  def list_service_points
    Availability::ServicePointResultPresenter.new(service_points, @request, Time.zone.today, self)
  end


  def api_services_from_request(params)

  end


  private

    def fetch_service_points
      @service_point_fetcher.()
    end


end
