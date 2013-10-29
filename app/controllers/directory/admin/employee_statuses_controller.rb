class Directory::EmployeeStatusesController < ApplicationController
  # GET /directory/employee_statuses
  # GET /directory/employee_statuses.json
  def index
    @directory_employee_statuses = Directory::EmployeeStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @directory_employee_statuses }
    end
  end

  # GET /directory/employee_statuses/1
  # GET /directory/employee_statuses/1.json
  def show
    @directory_employee_status = Directory::EmployeeStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @directory_employee_status }
    end
  end

  # GET /directory/employee_statuses/new
  # GET /directory/employee_statuses/new.json
  def new
    @directory_employee_status = Directory::EmployeeStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @directory_employee_status }
    end
  end

  # GET /directory/employee_statuses/1/edit
  def edit
    @directory_employee_status = Directory::EmployeeStatus.find(params[:id])
  end

  # POST /directory/employee_statuses
  # POST /directory/employee_statuses.json
  def create
    @directory_employee_status = Directory::EmployeeStatus.new(params[:directory_employee_status])

    respond_to do |format|
      if @directory_employee_status.save
        format.html { redirect_to @directory_employee_status, notice: 'Employee status was successfully created.' }
        format.json { render json: @directory_employee_status, status: :created, location: @directory_employee_status }
      else
        format.html { render action: "new" }
        format.json { render json: @directory_employee_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /directory/employee_statuses/1
  # PUT /directory/employee_statuses/1.json
  def update
    @directory_employee_status = Directory::EmployeeStatus.find(params[:id])

    respond_to do |format|
      if @directory_employee_status.update_attributes(params[:directory_employee_status])
        format.html { redirect_to @directory_employee_status, notice: 'Employee status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @directory_employee_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directory/employee_statuses/1
  # DELETE /directory/employee_statuses/1.json
  def destroy
    @directory_employee_status = Directory::EmployeeStatus.find(params[:id])
    @directory_employee_status.destroy

    respond_to do |format|
      format.html { redirect_to directory_employee_statuses_url }
      format.json { head :no_content }
    end
  end
end
