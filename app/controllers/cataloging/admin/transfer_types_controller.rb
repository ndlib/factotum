class Cataloging::Admin::TransferTypesController < Cataloging::AdminController
  before_filter :authenticate_user!

  layout "cataloging_modal"

  def new
    @transfer_type = Cataloging::TransferType.new
  end

  def create
    @transfer_type = Cataloging::TransferType.new(params[:cataloging_transfer_type])
   
    if @transfer_type.save
      flash.now[:success] = "Your new transfer type has been added."
      render partial: "transfer_type", locals: {transfer_types: Cataloging::TransferType.sorted}
    else
      flash.now[:error] = @transfer_type.errors.full_messages.to_sentence
      render 'new', status: 403
    end 
  end

  def edit
     @transfer_type = Cataloging::TransferType.find(params[:id])
  end
  

  def update
      @transfer_type = Cataloging::TransferType.find(params[:id])

    if @transfer_type.update_attributes(params[:cataloging_transfer_type])
      flash.now[:success] = "Your transfer type has been updated."
      render partial: "transfer_type", locals: {transfer_types: Cataloging::TransferType.sorted}
    else
      flash.now[:error] = @transfer_type.errors.full_messages.to_sentence
      render 'edit', status: 403
    end
  end

  def destroy
    @transfer_type = Cataloging::TransferType.find(params[:id])
    @transfer_type.destroy

    flash.now[:success] = "Your delete has been successful."
    redirect_to cataloging_admin_path
  end
  

  def show
    
  end 

end
