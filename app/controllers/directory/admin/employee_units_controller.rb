class Directory::Admin::EmployeeUnitsController < Directory::AdminController
  layout Proc.new { |controller| controller.request.xhr? ? false : "application" }


  def new
    @employee = DirectoryEmployee.find(params[:employee_id])

    check_current_user_can_edit_this!

    @employee_unit = @employee.entry_type.new


  end


  # GET /directory/admin/employees/1/edit
  def edit
    
    @employee_unit = DirectoryEmployeeUnit.find(params[:id])
    check_current_user_can_edit_this!

  end




  # POST /directory/employees
  def create
    
    @employee_unit = entry_type.new(params[:employee_unit])
  
    if @employee.save
      flash.now[:success] = 'Employee information was successfully added.'
      redirect_to @employee
    else
      render action: "new"
    end

  end


  # PUT /directory/employees/1
  def update
    @employee = DirectoryEmployee.find(params[:id])

    if @employee.update_attributes(params[:directory_employee])
      flash.now[:success] = 'Employee information was successfully updated.'
      redirect_to @employee
    else
      render action: "edit"
    end
  end



  private

  def check_current_user_can_edit_this!
    if !permission.current_user_can_edit_employee?(@employee)
      flash[:error] = "You are not authorized to edit this employee."
      redirect_to root_path
    end
  end

  def entry_type
    params[:type].camelize.constantize
  end

  def underscore_name
    entry_type.to_s.demodulize.underscore
  end


end
