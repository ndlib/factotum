class Cataloging::AdminController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized?


  def index
    current_cataloging_user = Cataloging::User.find_by_username(current_user.netid);

    @users = Cataloging::User.sorted
    @locations = Cataloging::Location.sorted
    @formats = Cataloging::Format.sorted
    @transfer_types = Cataloging::TransferType.sorted
    @special_procedure_types = Cataloging::SpecialProcedureType.sorted

    
  end





  private
  def authorized?
    current_cataloging_user = Cataloging::User.find_by_username(current_user.netid);
    if current_cataloging_user.nil?
      flash[:error] = "You are not authorized to view that page."
      redirect_to root_path
    end
  end


end
