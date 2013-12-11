class Directory::OrganizationController < Directory::ApplicationController
  # Note: we probably need to set up optional authentication for areas
  # viewable by the public
  # before_filter :authenticate_user!


  def index

    # should be only one - administration
    top_level = DirectoryDepartment.top_level
    
    @all_departments = top_level.self_and_descendants_by_level.flatten
    
    respond_to do |format|
      format.html
      format.json { render json: @all_departments }
    end

  end


  def department_list
    @all_departments = DirectoryDepartment.all
  end

end
