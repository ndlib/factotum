class Directory::Admin::SelectorSubjectsController < Directory::AdminController
  layout "generic_modal"
  before_filter :load_initiator


  def new

    @selector_subject = @initiator.selector_subjects.new  
    @initiator_type = initiator_type
    @opposing_class = opposing_class

    # e.g. DirectorySubject.where.not(id is in selector_subject.selector)
    if !@initiator.selector_subjects.pluck(:subject_id).empty?
      @select_collection = @opposing_class.where('id NOT IN (?)',  @initiator.selector_subjects.pluck(:subject_id)).sorted
    else
      @select_collection = @opposing_class.sorted
    end



    check_current_user_can_edit_this!

  end



  # POST /directory/admin/subject/1/selector_subjects/
  def create

    @selector_subject = @initiator.selector_subjects.new(params[:directory_selector_subject])

    if @selector_subject.save
      @subject = @selector_subject.subject
      @employee = @selector_subject.employee
      render partial: "/directory/admin/#{initiator_type}s/selector_subject_display"
    else
      flash.now[:error] = @selector_subject.errors.full_messages.to_sentence
      render 'new', status: 403
    end

  end



  # DELETE /directory/admin/selector_subjects/1
  def destroy
 
    @selector_subject = DirectorySelectorSubject.find(params[:id])
    @subject = @selector_subject.subject
    @employee = @selector_subject.employee
    
    if @selector_subject.destroy
      flash.now[:success] = "Selector removed from subject"
    else
      flash.now[:error] = @selector_subject.errors.full_messages.to_sentence
    end

    render partial: "/directory/admin/#{initiator_type}s/selector_subject_display"

  end



  private

  def check_current_user_can_edit_this!
    if !permission.current_user_can_edit?(@initiator)
      flash[:error] = "You are not authorized to edit this."
      redirect_to root_path
    end
  end


  def load_initiator
    if params[:employee_id]
      @initiator = DirectoryEmployee.find(params[:employee_id])
    elsif params[:subject_id]
      @initiator = DirectorySubject.find(params[:subject_id])
    end
  end


  def initiator_type
    return @initiator.becomes(@initiator.class.base_class).class.to_s.underscore.sub "directory_", ""
  end  


  def opposing_class
    if initiator_type == "employee"
      DirectorySubject
    else
      DirectoryEmployee
    end
  end  


end
