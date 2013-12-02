class Directory::OrganizationController < ApplicationController


  def index
    # should be only one - administration
    top_level = DirectoryDepartment.top_level
    @all_departments = top_level.self_and_descendants_by_level.flatten
  end


end
