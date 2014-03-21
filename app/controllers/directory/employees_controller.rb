class Directory::EmployeesController < Directory::ApplicationController
  layout Proc.new { |controller| controller.request.params[:print] ? "print" : "application" }
  
  def index

    if params[:include] == "retired"  && permission.current_user_can_see_retired_employees?
      @include_checked = true
      @employees = DirectoryEmployee.unscoped.sorted
    else
      @include_checked = false
      @employees = DirectoryEmployee.sorted
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
