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
    Availability::ServicePointResultPresenter.new(service_points, Time.zone.today, @controller)
  end


  def api_services_from_request(params)
    Availability::ServicePointResultPresenter.new(
          Availability::ServicePoint.search(search_codes_from_params(params)),
          search_date_from_params(params),
          @controller
      )
  end


  private

    def fetch_service_points
      @service_point_fetcher.()
    end


    def search_date_from_params(params)
      params[:date] ||= Time.zone.today
      if params[:date].is_a?(String)
        params[:date] = Time.zone.parse(params[:date])
      end

      params[:date]
    end


    def search_codes_from_params(params)
      unless params.has_key?(:codes)
        params[:code]
      end

      params[:codes]
    end
end
