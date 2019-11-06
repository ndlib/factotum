class UsersController < ApplicationController
  before_filter ::login_user!

  def show
    @user = current_user
  end

  def order_emails
    @user = current_user
    @user.update_attributes!(receive_order_emails: params[:user][:receive_order_emails])
    redirect_to monographic_orders_path
  end

end
