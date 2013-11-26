class Directory::EmployeesController < Directory::ApplicationController
  # GET /directory/employees
  # GET /directory/employees.json
  def index
    @employees = Directory::Employee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employees }
    end
  end

  # GET /directory/employees/1
  # GET /directory/employees/1.json
  def show
    @employee = Directory::Employee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee }
    end
  end

end
