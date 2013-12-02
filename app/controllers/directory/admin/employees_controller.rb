class Directory::EmployeesController < AdminController
 
  def new
    @directory_employee = DirectoryEmployee.new
  end






  # GET /directory/admin/employees/1/edit
  def edit
    @directory_employee = DirectoryEmployee.find(params[:id])
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
        format.html { redirect_to @directory_employee, notice: 'Contact information was successfully updated.' }
    else
        format.html { render action: "edit" }
    end
  end





end
