class Directory::CommitteesController < Directory::ApplicationController
  # viewable by the public

  def index
    @library_committees = DirectoryLibraryCommittee.sorted.all
    @university_committees = DirectoryUniversityCommittee.sorted.all
    @permission = permission
    
    respond_to do |format|
      format.html
      format.json { render json: @all_committees }
    end
    
  end


  def show
    @committee = DirectoryOrganizationalUnit.find(params[:id])
    @permission = permission

    respond_to do |format|
      format.html
      format.json { render json: @committee }
    end
  end


end
