class Directory::Admin::SubjectsController < Directory::AdminController
  layout "generic_modal", only: [:new, :create, :edit]



  def show
    @subject = DirectorySubject.find(params[:id])
    check_current_user_can_edit_this!
  end



  def new
    check_current_user_can_add!
    @subject = DirectorySubject.new    
  end



  # GET /directory/admin/subjects/1/edit
  def edit
    @subject = DirectorySubject.find(params[:id])
    check_current_user_can_edit_this!
  end



  # POST /directory/admin/subjects
  def create
    
    @subject = DirectorySubject.new(params[:directory_subject])

    if @subject.save    
      flash[:success] = 'Subject was successfully created.'
      flash.keep(:success)
      render :status => 200, :js => "window.location = '#{directory_admin_subject_path(@subject)}'"
    else
      flash.now[:error] = @subject.errors.full_messages.to_sentence
      render action: 'new', status: 403
    end

  end



  # PUT /directory/subjects/1
  def update
    @subject = DirectorySubject.find(params[:id])

    if @subject.update_attributes(params[:directory_subject])
      render partial: "/directory/admin/subjects/subject_display", locals: {subject: @subject}
    else
      flash.now[:error] = @subject.errors.full_messages.to_sentence
      render action: 'edit'
    end
  end



  # DELETE /directory/admin/subjects/1
  def destroy
 
    @subject = DirectorySubject.find(params[:id])
    
    if @subject.destroy
      flash[:success] = "Subject removed"
    else
      flash[:error] = @subject.errors.full_messages.to_sentence
    end

    redirect_to directory_subjects_path

  end




  private
    def check_current_user_can_edit_this!
      if !permission.current_user_can_edit?(@subject)
        flash[:error] = "You are not authorized to edit this subject."
        redirect_to directory_root_path
      end
    end


    def check_current_user_can_add!
      if !permission.current_user_can_add_subject?
        flash[:error] = "You are not authorized to add a new subject."
        redirect_to directory_root_path
      end
    end


end
