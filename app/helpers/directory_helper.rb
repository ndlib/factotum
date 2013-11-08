module DirectoryHelper


  def permission
  	if current_user
    	@permission ||= Permission.new(current_user, self)
    end
  end



end