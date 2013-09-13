class Cataloging::UsersController < ApplicationController
  before_filter :authenticate_user!

  def new
  	@user = current_user;

    @cataloging_user = Cataloging::User.find(:user_id => params[:user_id]);
    
    # @cataloging_user

  end




end
