class Cataloging::ReportsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized?


  # used for report "parameter form"
  def index  	
    @current_cataloging_user = Cataloging::User.find_by_username(current_user.netid)
    @min_entry = Cataloging::Entry.minimum(:month_start_date)
    @max_entry = Time.now
    @default_min_entry = Time.parse("1-#{params[:entry_date_start]['month']}-#{params[:entry_date_start]['year']}") if !params[:entry_date_start]['month'].blank?
    @default_max_entry = Time.parse("1-#{params[:entry_date_end]['month']}-#{params[:entry_date_end]['year']}") if !params[:entry_date_end]['month'].blank?



    if @current_cataloging_user.admin?
      @available_reports = Cataloging::Report.all_reports
    else
      @available_reports = Cataloging::Report.supervisor_reports
    end

  end



  # used for report display
  def view

    #@current_cataloging_user = Cataloging::User.find_by_username(current_user.netid)
    @current_cataloging_user = Cataloging::User.find_by_username('menglis1')
    
    @employees_to_show = @current_cataloging_user.self_and_descendents
    @report = report_to_view.new(params, @employees_to_show)


    respond_to do |format|
      format.html
      #format.xls # { send_data @products.to_csv(col_sep: "\t") }
    end


  end




  private

  def report_to_view
    params[:report_to_view].camelize.constantize
  end


  def authorized?

    current_cataloging_user = Cataloging::User.find_by_username(current_user.netid)
    if !current_cataloging_user.admin? && !current_cataloging_user.subordinates.exists?
      flash[:error] = "You are not authorized to view this page."
      redirect_to cataloging_root_path
    end
  end



end
