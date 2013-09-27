class Directory::EmployeeUnitsController < ApplicationController
  # GET /directory/employee_units
  # GET /directory/employee_units.json
  def index
    @directory_employee_units = Directory::EmployeeUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @directory_employee_units }
    end
  end

  # GET /directory/employee_units/1
  # GET /directory/employee_units/1.json
  def show
    @directory_employee_unit = Directory::EmployeeUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @directory_employee_unit }
    end
  end

  # GET /directory/employee_units/new
  # GET /directory/employee_units/new.json
  def new
    @directory_employee_unit = Directory::EmployeeUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @directory_employee_unit }
    end
  end

  # GET /directory/employee_units/1/edit
  def edit
    @directory_employee_unit = Directory::EmployeeUnit.find(params[:id])
  end

  # POST /directory/employee_units
  # POST /directory/employee_units.json
  def create
    @directory_employee_unit = Directory::EmployeeUnit.new(params[:directory_employee_unit])

    respond_to do |format|
      if @directory_employee_unit.save
        format.html { redirect_to @directory_employee_unit, notice: 'Employee unit was successfully created.' }
        format.json { render json: @directory_employee_unit, status: :created, location: @directory_employee_unit }
      else
        format.html { render action: "new" }
        format.json { render json: @directory_employee_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /directory/employee_units/1
  # PUT /directory/employee_units/1.json
  def update
    @directory_employee_unit = Directory::EmployeeUnit.find(params[:id])

    respond_to do |format|
      if @directory_employee_unit.update_attributes(params[:directory_employee_unit])
        format.html { redirect_to @directory_employee_unit, notice: 'Employee unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @directory_employee_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directory/employee_units/1
  # DELETE /directory/employee_units/1.json
  def destroy
    @directory_employee_unit = Directory::EmployeeUnit.find(params[:id])
    @directory_employee_unit.destroy

    respond_to do |format|
      format.html { redirect_to directory_employee_units_url }
      format.json { head :no_content }
    end
  end
end
