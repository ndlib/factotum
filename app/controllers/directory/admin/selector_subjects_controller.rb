class Directory::Admin::SelectorSubjectsController < Directory::AdminController
  layout "generic_modal"

  def new
    
    @subject = DirectorySubject.find(params[:subject_id])
    @selector_subject = @subject.selector_subjects.new

    check_current_user_can_edit_this!

  end



  # POST /directory/admin/subject/1/selector_subjects/
  def create

    @subject = DirectorySubject.find(params[:subject_id])
    @selector_subject = @subject.selector_subjects.new(params[:directory_selector_subject])

    if @selector_subject.save
      render partial: "/directory/admin/subjects/selector_subject_display"
    else
      flash.now[:error] = @selector_subject.errors.full_messages.to_sentence
      render 'new', status: 403
    end

  end



  # DELETE /directory/admin/selector_subjects/1
  def destroy
 
    @selector_subject = DirectorySelectorSubject.find(params[:id])
    @subject = @selector_subject.subject
    
    if @selector_subject.destroy
      flash.now[:success] = "Selector removed from subject"
    else
      flash.now[:error] = @selector_subject.errors.full_messages.to_sentence
    end

    render partial: "/directory/admin/subjects/selector_subject_display"

  end



  private

  def check_current_user_can_edit_this!
    if !permission.current_user_can_edit?(@subject)
      flash[:error] = "You are not authorized to edit this."
      redirect_to root_path
    end
  end




end
