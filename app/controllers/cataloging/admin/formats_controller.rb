class Cataloging::Admin::FormatsController < Cataloging::AdminController
  before_filter :login_user!

  layout "generic_modal"

  def new
    @format = Cataloging::Format.new
  end

  def create
    @format = Cataloging::Format.new(format_params)

    if @format.save
      flash.now[:success] = "Your new format has been added."
      render partial: "format", locals: {formats: Cataloging::Format.sorted}
    else
      flash.now[:error] = @format.errors.full_messages.to_sentence
      render 'new', status: 403
    end
  end

  def edit
     @format = Cataloging::Format.find(params[:id])
  end


  def update
      @format = Cataloging::Format.find(params[:id])

    if @format.update_attributes(format_params)
      flash.now[:success] = "Your format has been updated."
      render partial: "format", locals: {formats: Cataloging::Format.sorted}
    else
      flash.now[:error] = @format.errors.full_messages.to_sentence
      render 'edit', status: 403
    end
  end

  def destroy

    @format = Cataloging::Format.find(params[:id])

    begin
      @format.destroy
      flash[:success] = "Your delete has been successful."
    rescue => e
      Raven.capture_exception(e)
      @format.errors.add(:base, e)
      flash[:error] = "#{e}"
    ensure
      redirect_to cataloging_admin_path
    end

  end


  def show

  end

private

  def format_params
    params.require(:cataloging_format).permit(:name)
  end

end
