class Cataloging::ReportsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :cataloging_user?
  before_filter :is_supervisor?

  # used for report "parameter form"
  def index  	
    @current_cataloging_user = Cataloging::User.find_by_username(current_user.netid)
    @min_entry = Cataloging::Entry.minimum(:month_start_date)
    @max_entry = Time.now

  end



  # used for report display
  def view

    @current_cataloging_user = Cataloging::User.find_by_username(current_user.netid)

    @report = report_to_view.new(params)
binding.pry

  end




  private
  def cataloging_user?
    current_cataloging_user = Cataloging::User.find_by_username(current_user.netid)
    if current_cataloging_user.nil?
      flash[:error] = "You are not authorized to view this page."
      redirect_to root_path
    end
  end


  def is_supervisor?
    current_cataloging_user = Cataloging::User.find_by_username(current_user.netid)
    return current_cataloging_user.subordinates.exists?
  end

  def report_to_view
    params[:report_to_view].camelize.constantize
  end

end
