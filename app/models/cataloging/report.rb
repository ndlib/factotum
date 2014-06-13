class Cataloging::Report

  def initialize(params)
    # add / subtract day due to timezone issues (rails being helpful with timezone conversion)
    @entry_date_start = Time.parse("1-#{params[:entry_date_start]['month']}-#{params[:entry_date_start]['year']}") - 1.day if !params[:entry_date_start]['month'].blank?
    @entry_date_end = Time.parse("1-#{params[:entry_date_end]['month']}-#{params[:entry_date_end]['year']}") + 1.day if !params[:entry_date_end]['month'].blank?

    @params = params

  end


  def self.available_reports
    { "Cataloging::Reports::Institutional" => "Institutional/ARL", "Cataloging::Reports::Locations" => "Locations", 
      "Cataloging::Reports::SpecialProcedures" => "Special Procedures", "Cataloging::Reports::EmployeeSummary" => "Employee Summary",
      "Cataloging::Reports::EmployeeDetail" => "Employee Detail" }
  end


  def name
    self.class.available_reports[@params[:report_to_view]]
  end

  def display_location
    Cataloging::Location.where(id: @params[:location_id]).pluck(:name) unless @params[:location_id].blank?
  end
    
  def display_format
    Cataloging::Format.where(id: @params[:format_id]).pluck(:name) unless @params[:format_id].blank?
  end

  def display_start_date
    @params[:entry_date_start] unless @params[:entry_date_start].blank?
  end

  def display_end_date
    @params[:entry_date_end] unless @params[:entry_date_end].blank?
  end



  
end

