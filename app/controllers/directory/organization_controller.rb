class Directory::OrganizationController < Directory::ApplicationController
before_filter :authenticate_user!
#require 'pry'


  def index

    # should be only one - administration
    top_level = DirectoryDepartment.top_level
    
    @all_departments = top_level.self_and_descendants_by_level.flatten

  end


end
