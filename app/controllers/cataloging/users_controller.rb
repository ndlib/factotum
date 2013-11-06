class Cataloging::UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :cataloging_user?

  def index
  	
    @current_cataloging_user = Cataloging::User.find_by_username(current_user.netid);

    # Gets subordinates up to two levels down
    @all_subordinates = @current_cataloging_user.descendents

  end




  private
  def cataloging_user?
    current_cataloging_user = Cataloging::User.find_by_username(current_user.netid);
    if current_cataloging_user.nil?
      flash[:error] = "You are not authorized to view this page."
      redirect_to root_path
    end
  end



end
