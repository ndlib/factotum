class Availability::ApiController < ApplicationController

  private

  def search_date
    params[:date] ||= Time.zone.today
    if params[:date].is_a?(String)
      params[:date] = Time.zone.parse(params[:date])
    end

    params[:date]
  end

  def search_codes
    unless params.has_key?(:codes)
      params[:code]
    end

    params[:codes]
  end

  public

  def index
    services = Availability::ServicePointResultPresenter.new(Availability::ServicePoint.search(search_codes), request, search_date)

    render :json => services
  end

end
