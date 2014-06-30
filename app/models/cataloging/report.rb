class Cataloging::Report
  require 'csv'
  @@cols=[]
  
  def initialize(params, employees_to_show)
    # add / subtract day due to timezone issues (rails being helpful with timezone conversion)
    @entry_date_start = Time.parse("1-#{params[:entry_date_start]['month']}-#{params[:entry_date_start]['year']}") - 1.day if !params[:entry_date_start]['month'].blank?
    @entry_date_end = Time.parse("1-#{params[:entry_date_end]['month']}-#{params[:entry_date_end]['year']}") + 1.day if !params[:entry_date_end]['month'].blank?

    @params = params
    @employees_to_show = employees_to_show

  end



  def self.all_reports
    self.admin_reports.merge(self.supervisor_reports)
  end


  def self.admin_reports
    { "Cataloging::Reports::Institutional" => "Institutional/ARL", 
      "Cataloging::Reports::Locations" => "Locations", 
      "Cataloging::Reports::SpecialProcedures" => "Special Procedures" }
  end


  def self.supervisor_reports
    { "Cataloging::Reports::EmployeeSummary" => "Employee Summary",
      "Cataloging::Reports::EmployeeDetail" => "Employee Detail" }
  end


  def name
    self.class.all_reports[@params[:report_to_view]]
  end

  def display_location
    if @params[:location_id].blank? || @params[:location_id].include?("")
      ["All"]
    else
      Cataloging::Location.where(id: @params[:location_id]).pluck(:name)
    end
  end
    
  def display_format
    if @params[:format_id].blank? || @params[:format_id].include?("")
      ["All"]
    else
      Cataloging::Format.where(id: @params[:format_id]).pluck(:name)
    end
  end

  def display_start_date
    @params[:entry_date_start] unless @params[:entry_date_start].blank?
  end

  def display_end_date
    @params[:entry_date_end] unless @params[:entry_date_end].blank?
  end

  def cols
    @@cols
  end



  def to_csv(options = {})    
    #entries = entries.to_a.map(&:serializable_hash)

    CSV.generate(options) do |csv|
      csv << cols.map(&:titleize)
      entries.each do |e|
        csv << e.values_at(*cols)
      end


    end
  end

  
end

