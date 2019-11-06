class Cataloging::Admin::LocationsController < Cataloging::AdminController
  before_filter ::login_user!

  layout "generic_modal"

  def new
    @location = Cataloging::Location.new
  end

  def create
    @location = Cataloging::Location.new(locations_params)

    if @location.save
      flash.now[:success] = "Your new location has been added."
      render partial: "location", locals: {locations: Cataloging::Location.sorted}
    else
      flash.now[:error] = @location.errors.messages
      render 'new', status: 403
    end
  end

  def edit
     @location = Cataloging::Location.find(params[:id])
  end


  def update
    @location = Cataloging::Location.find(params[:id])

    if @location.update_attributes(locations_params)
      flash.now[:success] = "Your location has been updated."
      render partial: "location", locals: {locations: Cataloging::Location.sorted}
    else
      flash.now[:error] = @location.errors.messages
      render 'edit', status: 403
    end
  end

  def destroy

    @location = Cataloging::Location.find(params[:id])


    begin
      @location.destroy
      flash[:success] = "Your delete has been successful."
    rescue => e
      Raven.capture_exception(e)
      @location.errors.add(:base, e)
      flash[:error] = "#{e}"
    ensure
      redirect_to cataloging_admin_path
    end


  end

  def locations_params
    params.require(:cataloging_location).permit!
  end


  def show
      render partial: "location", locals: {locations: Cataloging::Location.sorted}
  end


end
