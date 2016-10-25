class Availability::RegularHoursController < ApplicationController
  before_filter :authenticate_user!

  def new
    @hours = service_point.clone_or_build_regular_hours(params[:clone_id])
  end


  def create
    @hours = service_point.new_hours(hours_params)
    if !@hours.valid?
      flash.now[:error] = 'Unable to create new regular hours.  Please correct the errors in the form and resubmit.'
      render :action => 'new'
    else
      flash[:success] = "#{@hours.name} created"
      redirect_to availability_service_point_hours_path(service_point)
    end
  end


  def edit
    @hours = service_point.regular_hours.find(params[:id])
  end


  def update
    @hours = service_point.regular_hours.find(params[:id])
    service_point.update_hours(@hours, hours_params)

    if !@hours.valid?
      flash.now[:error] = "Unable to update #{@hours.name}.  Please correct the errors in the form and resubmit."
      render :action => 'edit'
    else
      flash[:success] = "#{@hours.name} updated"
      redirect_to availability_service_point_hours_path(service_point)
    end
  end


  private

    def hours_params
      params.require(:availability_regular_hours).permit(:monday, :tuesday, :wednesday,
                                                         :thursday, :friday, :saturday,
                                                         :sunday, :name, :prepend_text,
                                                         :append_text, :service_point,
                                                         :start_date, :end_date, :hours)
    end

    def service_point
      @service_point ||= hours_api.service_point(params[:service_point_id])
    end


    def hours_api
      @hours_api ||= HoursApi.new(self)
    end

end
