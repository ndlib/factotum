class Directory::Admin::EmployeesController < Directory::AdminController
 
  def new
    @directory_employee = DirectoryEmployee.new
  end


  # GET /directory/admin/employees/1/edit
  def edit
    
    @directory_employee = DirectoryEmployee.find(params[:id])
    check_current_user_can_edit_this!

  end


  # POST /directory/employees
  def create
    @directory_employee = DirectoryEmployee.new(params[:directory_employee])

    if @directory_employee.save
      format.html { redirect_to @directory_employee, notice: 'Contact information was successfully created.' }
    else
      format.html { render action: "new" }
    end
  end


  # PUT /directory/employees/1
  def update
    @directory_employee = DirectoryEmployee.find(params[:id])

    if @directory_employee.update_attributes(params[:directory_employee])
      flash.now[:success] = 'Employee information was successfully updated.'
      redirect_to @directory_employee
    else
        render action: "edit"
    end
  end



  private
    def check_current_user_can_edit_this!
      if !permission.current_user_can_edit_employee?(@directory_employee)
        flash[:error] = "You are not authorized to edit this employee."
        redirect_to root_path
      end

      
    end


end
