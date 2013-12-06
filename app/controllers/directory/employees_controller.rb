class Directory::EmployeesController < Directory::ApplicationController

  def index
    @employees = DirectoryEmployee.sorted

    respond_to do |format|
      format.html
      format.json { render json: @employees }
    end
  end


  def show
    @employee = DirectoryEmployee.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @employee }
    end
  end

end
