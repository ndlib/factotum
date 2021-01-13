class Directory::ApiController < ApplicationController
  protect_from_forgery

  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  rescue_from ActionController::RoutingError, :with => :render_not_found


  def routing_error
    raise ActionController::RoutingError.new(params[:path])
  end

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
    @employees = DirectoryEmployee.current_employees.sorted
    respond_to do |format|
      format.json { render :json => @employees }
    end
  end


  def employee_units
    @employee_units = DirectoryEmployee.find(params[:emp_id]).departments.sorted
    respond_to do |format|
      format.json { render :json => @employee_units }
    end
  end


  def unit
    @unit = DirectoryDepartment.find(params[:unit_id])
    respond_to do |format|
      format.json { render :json => @unit }
    end
  end


  def unit_employees
    @unit_employees = DirectoryDepartment.find(params[:unit_id]).employees.sorted
    respond_to do |format|
      format.json { render :json => @unit_employees }
    end
  end


  def all_units
    @units = DirectoryDepartment.sorted
    respond_to do |format|
      format.json { render :json => @units }
    end
  end

  def employee_committees
    @employee_committee = DirectoryEmployee.find(params[:emp_id]).university_committees.sorted
    respond_to do |format|
      format.json { render :json => @employee_committee }
    end
  end

  def committee
    @committee = DirectoryUniversityCommittee.find(params[:unit_id])
    respond_to do |format|
      format.json { render :json => @committee }
    end
  end


  def committee_employees
    @committee_employees = DirectoryUniversityCommittee.find(params[:unit_id]).employees.sorted
    respond_to do |format|
      format.json { render :json => @committee_employees }
    end
  end

  def all_committees
    @committees = DirectoryUniversityCommittee.sorted
    respond_to do |format|
      format.json { render :json => @committees }
    end
  end

  def employee_teams
    @employee_teams = DirectoryEmployee.find(params[:emp_id]).library_teams.sorted
    respond_to do |format|
      format.json { render :json => @employee_teams }
    end
  end

  def team
    @team = DirectoryLibraryTeam.find(params[:unit_id])
    respond_to do |format|
      format.json { render :json => @team }
    end
  end

  def team_employees
    @team_employees = DirectoryLibraryTeam.find(params[:unit_id]).employees.sorted
    respond_to do |format|
      format.json { render :json => @team_employees }
    end
  end

  def all_teams
    @teams = DirectoryLibraryTeam.sorted
    respond_to do |format|
      format.json { render :json => @teams }
    end
  end

  def employee_organizations
    @employee_organizations = DirectoryEmployee.find(params[:emp_id]).organizational_units.sorted
    respond_to do |format|
      format.json { render :json => @employee_organizations }
    end
  end

  def organization
    @organization = DirectoryOrganizationalUnit.find(params[:unit_id])
    respond_to do |format|
      format.json { render :json => @organization }
    end
  end


  def organization_employees
    @team_organizations = DirectoryOrganizationalUnit.find(params[:unit_id]).employees.sorted
    respond_to do |format|
      format.json { render :json => @team_organizations }
    end
  end

  def all_organizations
    @organizations = DirectoryOrganizationalUnit.sorted
    respond_to do |format|
      format.json { render :json => @organizations }
    end
  end

  def employee_group
    @employees = Directory::EmployeeFetch.by_netids(params[:emp_ids])
    respond_to do |format|
      format.json { render   :json => @employees }
    end
  end


  private


  def record_not_found
    respond_to do |format|
      format.json { render :json => { :return_code => 404, :error_message => 'Record not found' }, :status => 404 }
    end
  end

  def render_not_found
    respond_to do |format|
      format.json { render :json => { :return_code => 404, :error_message => 'Path not found' }, :status => 404 }
    end
  end
end
