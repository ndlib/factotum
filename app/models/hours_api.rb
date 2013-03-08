class HoursApi

  def initialize(controller)
    @service_point_fetcher = Availability::ServicePoint.public_method(:all)
    @controller = controller
    @request    = controller.request
  end


  def service_point(id)
    Availability::ServicePointPresenter.new(Availability::ServicePoint.find(id), Time.zone.today, @controller)
  end


  def service_points
    fetch_service_points
  end


  def list_service_points
    Availability::ServicePointResultPresenter.new(service_points, @request, Time.zone.today, @controller)
  end


  def api_services_from_request(params)

  end


  private

    def fetch_service_points
      @service_point_fetcher.()
    end


end
