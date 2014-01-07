class Directory::Admin::ContactInformationsController < Directory::AdminController
  layout "generic_modal"
  before_filter :load_contactable

  def new
    @contact_information = @contactable.contact_informations.new()
    @contact_information.type = params[:type]

    check_current_user_can_edit_this!

  end


  # GET /directory/admin/contact_informations/1/edit
  def edit
    check_current_user_can_edit_this!
  end


  # POST /directory/admin/1/contact_informations/
  def create

    @contact_information = @contactable.contact_informations.new(params[:directory_contact_information])
    @contact_information.type = params[:type]

    if @contact_information.save
      render partial: "contact_information", locals: {contactable: @contactable, contactable_type: contactable_type}
    else
      flash.now[:error] = @contact_information.errors.full_messages.to_sentence
      render 'edit', status: 400
    end

  end


  # PUT /directory/employees/1/contact_informations/1
  def update

    if @contact_information.update_attributes(params[:directory_contact_information])
      render partial: "contact_information", locals: {contactable: @contactable, contactable_type: contactable_type}
    else
      flash.now[:error] = @contact_information.errors.full_messages.to_sentence
      render 'edit', status: 400
    end

  end



  # DELETE /directory/admin/contact_informations/1
  def destroy
 
    @contact_information = DirectoryContactInformation.find(params[:id])
    
    if @contact_information.destroy
      render partial: "contact_information", locals: {contactable: @contactable, contactable_type: contactable_type}
    else
      flash.now[:error] = @contact_information.errors.full_messages.to_sentence
      render 'edit', status: 400
    end


  end


  private

  def check_current_user_can_edit_this!
    if !permission.current_user_can_edit?(@contactable)
      flash[:error] = "You are not authorized to edit this"
      redirect_to root_path
    end
  end

  def contact_type
    params[:type].camelize.constantize
  end

  def underscore_contact_type
    contact_type.to_s.demodulize.underscore
  end

  def load_contactable
    if params[:employee_id]
      @contactable = DirectoryEmployee.find(params[:employee_id])
    elsif params[:organizational_unit_id]
      @contactable = DirectoryOrganizationalUnit.find(params[:organizational_unit_id])
    elsif params[:id]
      @contact_information = DirectoryContactInformation.find(params[:id])
      @contactable = @contact_information.contactable
    end
  end


  def contactable_type
    return @contactable.becomes(@contactable.class.base_class).class.to_s.underscore.sub "directory_", ""
  end  



end
