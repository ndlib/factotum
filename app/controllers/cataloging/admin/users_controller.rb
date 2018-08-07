class Cataloging::Admin::UsersController < Cataloging::AdminController
  layout "generic_modal"

  def new
  	@cataloging_user = Cataloging::User.new
  end



  def create
    @cataloging_user = Cataloging::User.new(users_params)

    if @cataloging_user.save
      flash.now[:success] = "Your new user has been added."
      render partial: "user", locals: {users: Cataloging::User.sorted}
    else
      flash.now[:error] = @cataloging_user.flash.now[:error] = @transfer_type.errors.full_messages.to_sentence
      render 'new', status: 403
    end
  end


  def edit
  	 @cataloging_user = Cataloging::User.find(params[:id])
  end


  def update
    @cataloging_user = Cataloging::User.find(params[:id])

    if @cataloging_user.update_attributes(users_params)
      flash.now[:success] = "Your user has been updated."
      render partial: "user", locals: {users: Cataloging::User.sorted}
    else

      flash.now[:error] = @cataloging_user.errors.full_messages.to_sentence
      render 'edit', status: 403
    end
  end



  def destroy

    @user = Cataloging::User.find(params[:id])
    begin
      @user.destroy
      flash[:success] = "Your delete has been successful."
    rescue ActiveRecord::DeleteRestrictionError => e
      Raven.capture_exception(e)
      @user.errors.add(:base, e)
      flash[:error] = "#{e}"
    ensure
      redirect_to cataloging_admin_path
    end

  end


  def show

  end

  private

    def users_params
      params.require(:cataloging_user).permit!
    end


end
