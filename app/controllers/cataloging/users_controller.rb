class Cataloging::UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@user = current_user;

    @cataloging_user = Cataloging::User.find_by_username(current_user.netid);
    @entries = @cataloging_user.entries.sorted_entry_months

  end




end
