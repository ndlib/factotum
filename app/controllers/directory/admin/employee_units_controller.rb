class Directory::Admin::EmployeeUnitsController < Directory::AdminController
  layout "generic_modal"


  def new
    @employee = DirectoryEmployee.find(params[:employee_id])
    @employee_unit = @employee.employee_units.new
    @unit_select_collection = unit_type.sorted
    
    @unit_type_class = unit_type.to_s


    check_current_user_can_edit_this!

  end


  # GET /directory/admin/employee_units/1/edit
  def edit
    @employee_unit = DirectoryEmployeeUnit.find(params[:id])
    @employee = @employee_unit.employee
    @unit_select_collection = unit_type.sorted
    
    @unit_type_class = unit_type.to_s

    check_current_user_can_edit_this!

  end




  # POST /directory/employees/1/employee_units/
  def create

    @employee = DirectoryEmployee.find(params[:employee_id])
    @employee_unit = @employee.employee_units.new(params[:directory_employee_unit])

    if @employee_unit.save
      render partial: "/directory/admin/employees/employee_unit"
    else
      flash.now[:error] = @format.errors.full_messages.to_sentence
      render 'edit', status: 403
    end

  end


  # PUT /directory/employees/1/employee_units/1
  def update

    @employee_unit = DirectoryEmployeeUnit.find(params[:id])
    @employee = @employee_unit.employee

    if @employee_unit.update_attributes(params[:directory_employee_unit])
      render partial: "/directory/admin/employees/employee_unit"
    else
      flash.now[:error] = @format.errors.full_messages.to_sentence
      render 'edit', status: 403
    end

  end



  # DELETE /directory/admin/employee_units/1
  def destroy
 
    @employee_unit = DirectoryEmployeeUnit.find(params[:id])
    @employee = @employee_unit.employee
    
    if @employee_unit.destroy
      flash.now[:success] = "Unit removed"
      render partial: "/directory/admin/employees/employee_unit"
    else
      flash.now[:error] = @format.errors.full_messages.to_sentence
      render 'edit', status: 403
    end


  end




  private

  def check_current_user_can_edit_this!
    if !permission.current_user_can_edit?(@employee)
      flash[:error] = "You are not authorized to edit this employee."
      redirect_to root_path
    end
  end

  def unit_type
    if params[:type]
      params[:type].constantize
    elsif @employee_unit
      @employee_unit.organizational_unit.type.constantize
    end
  end

  def underscore_name
    unit_type.to_s.demodulize.underscore
  end


end
