class Directory::DirectoryApiController < ApplicationController

  def employee
    case params[:identifier]
    when 'by_netid'
      @employee = DirectoryEmployee.by_netid(params[:emp_id])
    when 'by_id'
      @employee = DirectoryEmployee.find(params[:emp_id])
    end
    if (@employee.blank?)
      raise ActiveRecord::RecordNotFound
    end

    respond_to do |format|
      format.json { render :json => @employee }
    end
  end


  def current_employees
    @employees = DirectoryEmployee.current_employees
    respond_to do |format|
      format.json { render :json => @employees }
    end
  end


  def employee_units
    @employee_units = DirectoryOrganizationalUnit.find(params[:emp_id]).organizational_units

    respond_to do |format|
      format.json { render :json => @employee_units }
    end
  end


  def unit
    @unit = DirectoryOrganizationalUnit.find(params[:unit_id])

    respond_to do |format|
      format.json { render :json => @unit }
    end
  end


  def unit_employees
    @unit_employees = DirectoryOrganizationalUnit.find(params[:unit_id]).employees

    respond_to do |format|
      format.json { render :json => @unit_employees }
    end
  end


  def all_units
    @units = DirectoryOrganizationalUnit.sorted

    respond_to do |format|
      format.json { render :json => @units }
    end
  end

end
