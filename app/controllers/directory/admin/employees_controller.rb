class Directory::Admin::EmployeesController < Directory::AdminController
  layout "generic_modal", only: [:new, :create]


  def new
    # At this point we're just prompting for the new employee's net ID
    check_current_user_can_add!


    @employee = DirectoryEmployee.new
    
  end


  # GET /directory/admin/employees/1/edit
  def edit
    @employee = DirectoryEmployee.find(params[:id])
    check_current_user_can_edit_this!
    @contactable = @employee
  end




  # POST /directory/employees
  def create
    
    @employee = DirectoryEmployee.new(params[:directory_employee])

    # get ldap info for this netid! (loading attributes is later)
    ldap_employee = Directory::LdapEmployee.new(params[:directory_employee]["netid"])

    if ldap_employee.ldap.nil?
      flash.now[:error] = 'Employee not found in LDAP.  Please verify Net ID is correct.'
      render action: 'new', status: 403
    else

      @employee.load_ldap(ldap_employee)

      if @employee.save
      
        flash[:success] = 'Employee was successfully added and initial information from LDAP has been pulled in.'
        redirect_to edit_directory_admin_employee_path(@employee)
      

      else
        flash.now[:error] = @employee.errors.full_messages.to_sentence
        render action: 'new', status: 403
      end

    end


  end


  # PUT /directory/employees/1
  def update
    @employee = DirectoryEmployee.find(params[:id])

    if @employee.update_attributes(params[:directory_employee])
      flash[:success] = "Employee information was successfully updated.  #{ view_context.link_to 'Go to employee page', url_for([@employee]) }".html_safe
      redirect_to edit_directory_admin_employee_path(@employee)
    else
      flash.now[:error] = @employee.errors.full_messages.to_sentence
      render action: 'edit'
    end
  end



  private
    def check_current_user_can_edit_this!
      if !permission.current_user_can_edit?(@employee)
        flash[:error] = "You are not authorized to edit this employee."
        redirect_to directory_root_path
      end
    end


    def check_current_user_can_add!
      if !permission.current_user_can_add_employee?
        flash[:error] = "You are not authorized to add a new employee."
        redirect_to directory_root_path
      end
    end


end
