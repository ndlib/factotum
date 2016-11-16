class Directory::Admin::EmployeeUnitsController < Directory::AdminController
  layout "generic_modal"
  before_filter :load_initiator

  def new

    @employee_unit = @initiator.employee_units.new
    @unit_select_collection = unit_type.sorted

    @unit_type_class = unit_type.to_s
    @initiator_type = initiator_type

    check_current_user_can_edit_this!

  end


  # GET /directory/admin/employee_units/1/edit
  def edit

    @employee_unit = DirectoryEmployeeUnit.find(params[:id])
    @employee = @employee_unit.employee
    @unit_select_collection = unit_type.sorted

    @unit_type_class = unit_type.to_s
    @initiator_type = initiator_type

    check_current_user_can_edit_this!

  end




  # POST /directory/employees/1/employee_units/
  def create

    @employee_unit = @initiator.employee_units.new(unit_params)

    if @employee_unit.save
      @employee = @employee_unit.employee
      @organizational_unit = @employee_unit.organizational_unit

      render partial: "/directory/admin/#{initiator_type}s/employee_unit_display", locals: {employee: @employee, organizational_unit: @organizational_unit}
    else
      flash.now[:error] = @employee_unit.errors.full_messages.to_sentence
      render 'edit', status: 403
    end

  end


  # PUT /directory/employees/1/employee_units/1
  def update

    @employee_unit = DirectoryEmployeeUnit.find(params[:id])
    @employee = @employee_unit.employee
    @organizational_unit = @employee_unit.organizational_unit

    if @employee_unit.update_attributes(unit_params)
      render partial: "/directory/admin/#{initiator_type}s/employee_unit_display", locals: {employee: @employee, organizational_unit: @organizational_unit}
    else
      flash.now[:error] = @employee_unit.errors.full_messages.to_sentence
      render 'edit', status: 403
    end

  end



  # DELETE /directory/admin/employee_units/1
  def destroy

    @employee_unit = DirectoryEmployeeUnit.find(params[:id])
    @employee = @employee_unit.employee
    @organizational_unit = @employee_unit.organizational_unit

    if @employee_unit.destroy
      flash.now[:success] = "Unit removed"
      render partial: "/directory/admin/#{initiator_type}s/employee_unit_display", locals: {employee: @employee, organizational_unit: @organizational_unit}
    else
      flash.now[:error] = @employee_unit.errors.full_messages.to_sentence
      render 'edit', status: 403
    end


  end



  private

  def unit_params
    params.require(:directory_employee_unit).permit!
  end

  def check_current_user_can_edit_this!
    if !permission.current_user_can_edit?(@initiator)
      flash[:error] = "You are not authorized to edit this."
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


  def load_initiator
    if params[:employee_id]
      @initiator = DirectoryEmployee.find(params[:employee_id])
    elsif params[:organizational_unit_id]
      @initiator = DirectoryOrganizationalUnit.find(params[:organizational_unit_id])
    end
  end


  def initiator_type
    return @initiator.becomes(@initiator.class.base_class).class.to_s.underscore.sub "directory_", ""
  end



end
