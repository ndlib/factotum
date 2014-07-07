class Cataloging::ReportsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :cataloging_user?

  layout Proc.new { |controller| controller.request.params[:print] ? "print" : "application" }

  # used for report "parameter form"
  def index  	
    @current_cataloging_user = Cataloging::User.find_by_username(current_user.netid)
    @min_entry = Cataloging::Entry.minimum(:month_start_date)
    @max_entry = Time.now
    
    if !params[:entry_date_start].nil?
      @default_min_entry = Time.parse("1-#{params[:entry_date_start]['month']}-#{params[:entry_date_start]['year']}")
      @default_max_entry = Time.parse("1-#{params[:entry_date_end]['month']}-#{params[:entry_date_end]['year']}")
    end
    
    @default_min_entry ||= @min_entry
    @default_max_entry ||= @max_entry


    if @current_cataloging_user.admin?
      @available_reports = Cataloging::Report.all_reports
    else
      @available_reports = Cataloging::Report.supervisor_reports
    end

  end



  # used for report display
  def view

    @current_cataloging_user = Cataloging::User.find_by_username(current_user.netid)
    
    @employees_to_show = @current_cataloging_user.self_and_descendents
    @report = report_to_view.new(params, @employees_to_show)


    respond_to do |format|
      format.html
      #format.xls { send_data @report.to_csv(col_sep: "\t"), filename: "#{@report.name} #{Time.now.to_formatted_s(:month_and_year)}.xls" }
      format.xls { headers["Content-Disposition"] = "attachment; filename=\"#{@report.name} #{Time.now.to_formatted_s(:month_and_year)}.xls\"" }
    end


  end




  private

  def report_to_view
    params[:report_to_view].camelize.constantize
  end

  def cataloging_user?
    current_cataloging_user = Cataloging::User.find_by_username(current_user.netid)
    if current_cataloging_user.nil?
      flash[:error] = "You are not authorized to view this page."
      redirect_to root_path
    end
  end


end
