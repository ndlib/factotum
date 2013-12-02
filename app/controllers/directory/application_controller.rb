class Directory::ApplicationController < ApplicationController
  


  def directory_user
    Directory::User.new(current_user.netid);
  end


  def permission
      @permission ||= Directory::Permission.new(directory_user)
  end


end
