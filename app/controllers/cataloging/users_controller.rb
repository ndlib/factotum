class Cataloging::UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@user = current_user;

    @current_cataloging_user = Cataloging::User.find_by_username(current_user.netid);

    # Gets subordinates up to two levels down
    @all_subordinates = @current_cataloging_user.descendents

end


end
