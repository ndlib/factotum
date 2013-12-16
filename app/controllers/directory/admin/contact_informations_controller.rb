class Directory::Admin::ContactInformationsController < Directory::AdminController
  layout "generic_modal"


  def new
    @employee = DirectoryEmployee.find(params[:employee_id])
    @contact_information = @employee.contact_informations.new
    @contact_select_collection = contact_type.sorted
    
    @contact_type_class = contact_type.to_s


    check_current_user_can_edit_this!

  end


  # GET /directory/admin/contact_informations/1/edit
  def edit
    @contact_information = DirectoryEmployeeUnit.find(params[:id])
    @employee = @contact_information.employee
    @contact_select_collection = contact_type.sorted
    
    @contact_type_class = contact_type.to_s

    check_current_user_can_edit_this!

  end




  # POST /directory/employees/1/contact_informations/
  def create

    @employee = DirectoryEmployee.find(params[:employee_id])
    @contact_information = @employee.contact_informations.new(params[:directory_contact_information])

    if @contact_information.save
      render partial: "/directory/admin/employees/contact_information"
    else
      flash.now[:error] = @format.errors.full_messages.to_sentence
      render 'edit', status: 403
    end

  end


  # PUT /directory/employees/1/contact_informations/1
  def update

    @contact_information = DirectoryEmployeeUnit.find(params[:id])
    @employee = @contact_information.employee

    if @contact_information.update_attributes(params[:directory_contact_information])
      render partial: "/directory/admin/employees/contact_information"
    else
      flash.now[:error] = @format.errors.full_messages.to_sentence
      render 'edit', status: 403
    end

  end



  private

  def check_current_user_can_edit_this!
    if !permission.current_user_can_edit_employee?(@employee)
      flash[:error] = "You are not authorized to edit this employee."
      redirect_to root_path
    end
  end

  def contact_type
    if params[:type]
      params[:type].constantize
    elsif @contact_information
      @contact_information.organizational_unit.type.constantize
    end
  end

  def underscore_name
    contact_type.to_s.demodulize.underscore
  end


end
