class Hours::ServiceApiController < ApplicationController

  private

  def search_date
    params[:date] ||= Date.today
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
    services = Hours::ServiceResultPresenter.new(Hours::Service.search(search_codes), request, search_date)

    render :json => services
  end

end
