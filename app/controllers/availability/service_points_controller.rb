class Availability::ServicePointsController < ApplicationController
  before_filter :authenticate_user!, :except => :show

  def index
    @service_points = hours_api.list_service_points
  end


  def show
    @service_point = hours_api.service_point(params[:id])
    render :layout => 'print'
  end


  def print
    test_environment

    service_point = hours_api.service_point(params[:id])

    @pdf = UrlToPdfConverter.new(availability_service_point_url(service_point))

    @pdf.convert

    send_file(@pdf.pdf_path, :filename => "#{service_point.name}.pdf", :type => 'application/pdf')
  end


  def edit
    @service_point = Availability::ServicePointPresenter.new(Availability::ServicePoint.find(params[:id]), Time.zone.today, self)

    if params[:download]
      srp = Availability::ServicePointResultPresenter.new(Availability::ServicePoint.all, request, Time.zone.today, self)
      srp.write_ssi_files
      #@service_point.write_ssi_service_point_file
    end

    render :show
  end


  def update
  	@service_point = Availability::ServicePoint.find(params[:id])

  	if @service_point.update_attributes(params[:availability_service_point])
  		flash[:success]	= "#{@service_point.name} has been updated."
  	else
  		flash.now[:error] = "Unable to update the notifications for #{@service_point.name}"
  	end

  	redirect_to availability_service_points_path
  end


  private

    def test_environment
      if Rails.env == 'development'
        raise "This action will not work in developemnt mode because the pdf generator needs to make a request behind the scenes to turn the page into a pdf."
      end
    end


    def hours_api
      @hours_api ||= HoursApi.new(self)
    end

end
