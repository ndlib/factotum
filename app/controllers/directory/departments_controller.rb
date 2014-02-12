class Directory::DepartmentsController < Directory::ApplicationController
  # Note: we probably need to set up optional authentication for areas
  # viewable by the public
  # before_filter :authenticate_user!


  def index
    @all_departments = DirectoryDepartment.all
    @permission = permission
    
    respond_to do |format|
      format.html
      format.json { render json: @all_departments }
    end
    
  end


  def show
    @department = DirectoryDepartment.find(params[:id])
    @permission = permission

    respond_to do |format|
      format.html
      format.json { render json: @department }
    end
  end

end
