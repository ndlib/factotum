class Directory::EmployeesController < ApplicationController
  # GET /directory/employees
  # GET /directory/employees.json
  def index
    @directory_employees = Directory::Employee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @directory_employees }
    end
  end

  # GET /directory/employees/1
  # GET /directory/employees/1.json
  def show
    @directory_employee = Directory::Employee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @directory_employee }
    end
  end

  # GET /directory/employees/new
  # GET /directory/employees/new.json
  def new
    @directory_employee = Directory::Employee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @directory_employee }
    end
  end

  # GET /directory/employees/1/edit
  def edit
    @directory_employee = Directory::Employee.find(params[:id])
  end

  # POST /directory/employees
  # POST /directory/employees.json
  def create
    @directory_employee = Directory::Employee.new(params[:directory_employee])

    respond_to do |format|
      if @directory_employee.save
        format.html { redirect_to @directory_employee, notice: 'Employee was successfully created.' }
        format.json { render json: @directory_employee, status: :created, location: @directory_employee }
      else
        format.html { render action: "new" }
        format.json { render json: @directory_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /directory/employees/1
  # PUT /directory/employees/1.json
  def update
    @directory_employee = Directory::Employee.find(params[:id])

    respond_to do |format|
      if @directory_employee.update_attributes(params[:directory_employee])
        format.html { redirect_to @directory_employee, notice: 'Employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @directory_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directory/employees/1
  # DELETE /directory/employees/1.json
  def destroy
    @directory_employee = Directory::Employee.find(params[:id])
    @directory_employee.destroy

    respond_to do |format|
      format.html { redirect_to directory_employees_url }
      format.json { head :no_content }
    end
  end
end
