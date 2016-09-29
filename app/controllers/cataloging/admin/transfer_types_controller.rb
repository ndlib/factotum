class Cataloging::Admin::TransferTypesController < Cataloging::AdminController
  before_filter :authenticate_user!

  layout "generic_modal"

  def new
    @transfer_type = Cataloging::TransferType.new
  end

  def create
    @transfer_type = Cataloging::TransferType.new(transfer_params)

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

    if @transfer_type.update_attributes(transfer_params)
      flash.now[:success] = "Your transfer type has been updated."
      render partial: "transfer_type", locals: {transfer_types: Cataloging::TransferType.sorted}
    else
      flash.now[:error] = @transfer_type.errors.full_messages.to_sentence
      render 'edit', status: 403
    end
  end

  def destroy
    @transfer_type = Cataloging::TransferType.find(params[:id])

    begin
      @transfer_type.destroy
      flash[:success] = "Your delete has been successful."
    rescue ActiveRecord::DeleteRestrictionError => e
      @transfer_type.errors.add(:base, e)
      flash[:error] = "#{e}"
    ensure
      redirect_to cataloging_admin_path
    end


  end


  def show

  end

  private

  def transfer_params
    params.require(:cataloging_transfer_type).permit(:from_location_id, :to_location_id)
  end

end
