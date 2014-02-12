class Directory::SubjectsController < Directory::ApplicationController
  def index
    @subjects = DirectorySubject.all

    @permission = permission
    respond_to do |format|
      format.html
      format.json { render json: @subjects }
    end
  end



  def show
    @subject = DirectorySubject.find(params[:id])

    @permission = permission
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subject }
    end
  end
end
