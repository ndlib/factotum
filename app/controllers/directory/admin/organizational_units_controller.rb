class Directory::Admin::OrganizationalUnitsController < Directory::AdminController

  def new

    @organizational_unit = unit_type.new
    check_current_user_can_add!

  end


  # GET /directory/admin/organizational_units/1/edit
  def edit

    @organizational_unit = DirectoryOrganizationalUnit.find(params[:id])
    check_current_user_can_edit_this!

  end


  def create

    @organizational_unit = unit_type.new(params[:directory_organizational_unit])

    if @organizational_unit.save
      redirect_to edit_directory_admin_organizational_unit_path(@organizational_unit), notice: "Create Successful.  You may begin adding members and contact info below."
    else
      flash.now[:error] = @organizational_unit.errors.full_messages.to_sentence
      render 'new', status: 403
    end

  end


  # PUT /directory/organizational_units/1
  def update

    @organizational_unit = DirectoryOrganizationalUnit.find(params[:id])

    if @organizational_unit.update_attributes(params[:directory_organizational_unit])
      flash[:success] = "Organization information was successfully updated.  #{ view_context.link_to 'Go to organization page', url_for([@organizational_unit]) }".html_safe
      redirect_to edit_directory_admin_organizational_unit_path(@organizational_unit)
    else
      flash.now[:error] = @organizational_unit.errors.full_messages.to_sentence
      render 'edit', status: 403
    end

  end



  # DELETE /directory/admin/organizational_units/1
  def destroy
 
    @organizational_unit = DirectoryOrganizationalUnit.find(params[:id])
    
    if @organizational_unit.destroy
      flash[:success] = "Org Unit removed"
      redirect_to unit_type
    else
      flash[:error] = @organizational_unit.errors.full_messages.to_sentence
    end


  end




  private

  def check_current_user_can_edit_this!
    if !permission.current_user_can_edit?(@organizational_unit)
      flash[:error] = "You are not authorized to make changes to organizations."
      redirect_to root_path
    end
  end


  def check_current_user_can_add!
  	if !permission.current_user_can_add_organization?
  	  flash[:error] = "You are not authorized to add a new organization."
  	  redirect_to root_path
  	end
  end


  def unit_type
    if params[:type]
      params[:type].constantize
    elsif @organizational_unit
      @organizational_unit.type.constantize
    end
  end

  def underscore_name
    unit_type.to_s.demodulize.underscore
  end




end