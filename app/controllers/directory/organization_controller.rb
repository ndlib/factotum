class Directory::OrganizationController < ApplicationController
require 'pry'


  def index
    @top_level = DirectoryDepartment.top_level.sorted

#binding.pry






  end










end
