class Directory::DepartmentsController < Directory::ApplicationController
  before_filter :authenticate_user!
  layout Proc.new { |controller| controller.request.params[:print] ? "print" : "application" }


  def index
    @all_departments = DirectoryDepartment.sorted
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
