class Directory::ApplicationController < ApplicationController
  
  def directory_user
  	if !current_user.nil?
    	#Directory::User.new(current_user.netid)
      Directory::User.new('mdehmlow')
    else
    	Directory::User.new()
    end
  end


  def permission
     @permission ||= Directory::Permission.new(directory_user)
  end


end
