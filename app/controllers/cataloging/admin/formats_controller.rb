class Cataloging::Admin::FormatsController < Cataloging::AdminController
  before_filter :authenticate_user!

  layout "cataloging_modal"

  def new
    @format = Cataloging::Format.new
  end

  def create
    @format = Cataloging::Format.new(params[:cataloging_format])
   
    if @format.save
      flash.now[:success] = "Your new format has been added."
      render partial: "format", locals: {formats: Cataloging::Format.all}
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

    if @format.update_attributes(params[:cataloging_format])
      flash.now[:success] = "Your format has been updated."
      render partial: "format", locals: {formats: Cataloging::Format.all}
    else
      flash.now[:error] = @format.errors.full_messages.to_sentence
      render 'edit', status: 403
    end
  end

  def destroy
    @format = Cataloging::Format.find(params[:id])
    @format.destroy

    flash.now[:success] = "Your delete has been successful."
    redirect_to cataloging_admin_path
  end
  

  def show
    
  end 

end
