class Directory::ApplicationController < ApplicationController
  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end

  def directory_user
  	if !current_user.nil?
    	Directory::User.new(current_user.netid)
    else
    	Directory::User.new()
    end
  end


  def permission
     @permission ||= Directory::Permission.new(directory_user)
  end

end
