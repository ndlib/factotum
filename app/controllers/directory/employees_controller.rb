class Directory::EmployeesController < Directory::ApplicationController
  before_filter :authenticate_user!
  layout Proc.new { |controller| controller.request.params[:print] ? "print" : "application" }

  def index
    search_class = DirectoryEmployee.includes(:employee_units, :subjects, :primary_address_information, :primary_email_information, :primary_phone_information)
    if params[:commit] == "Search"
      @started_date_start = Time.parse("1-#{params[:started_date_start]['month']}-#{params[:started_date_start]['year']}") if !params[:started_date_start]['month'].blank?
      @started_date_end = Time.parse("1-#{params[:started_date_end]['month']}-#{params[:started_date_end]['year']}") if !params[:started_date_end]['month'].blank?
      @leave_date_start = Time.parse("1-#{params[:leave_date_start]['month']}-#{params[:leave_date_start]['year']}") if !params[:leave_date_start]['month'].blank?
      @leave_date_end = Time.parse("1-#{params[:leave_date_end]['month']}-#{params[:leave_date_end]['year']}") if !params[:leave_date_end]['month'].blank?

      @employees = search_class.search(params)

      @selected_params = params
      @filter_collapse = "out"

    else
      @employees = search_class.sorted

      @selected_params = Hash.new
      @filter_collapse = "in"

    end


    @permission = permission
    respond_to do |format|
      format.html
      format.json { render json: @employees }
    end
  end

  def photos
    search_class = DirectoryEmployee.includes(:employee_units, :subjects, :primary_address_information, :primary_email_information, :primary_phone_information)
    if params[:commit] == "Search"
      @started_date_start = Time.parse("1-#{params[:started_date_start]['month']}-#{params[:started_date_start]['year']}") if !params[:started_date_start]['month'].blank?
      @started_date_end = Time.parse("1-#{params[:started_date_end]['month']}-#{params[:started_date_end]['year']}") if !params[:started_date_end]['month'].blank?
      @leave_date_start = Time.parse("1-#{params[:leave_date_start]['month']}-#{params[:leave_date_start]['year']}") if !params[:leave_date_start]['month'].blank?
      @leave_date_end = Time.parse("1-#{params[:leave_date_end]['month']}-#{params[:leave_date_end]['year']}") if !params[:leave_date_end]['month'].blank?

      @employees = search_class.search(params)

      @selected_params = params
      @filter_collapse = "out"

    else
      @employees = search_class.sorted

      @selected_params = Hash.new
      @filter_collapse = "in"
    end

    @permission = permission
    respond_to do |format|
      format.html
      format.json { render json: @employees }
    end

  end


  def show
    load_employee

    if !@employee.nil?
      @permission = permission
      respond_to do |format|
        format.html
        format.json { render json: @employee }
      end
    else
      flash[:error] = "This employee doesn't exist or you don't have permission to view."
      redirect_to directory_root_path
    end
  end


  private


  def load_employee


    if params[:id]

      if permission.current_user_can_see_retired_employees?
        @employee = DirectoryEmployee.unscoped.find_by_netid(params[:id])
      else
        @employee = DirectoryEmployee.find_by_netid(params[:id])
      end


      # try by last name
      if @employee.nil?
        @employee = DirectoryEmployee.find_by_last_name(params[:id])
      end


    elsif params[:netid]
      @employee = DirectoryEmployee.find_by_netid(params[:netid])
    end

  end




end
