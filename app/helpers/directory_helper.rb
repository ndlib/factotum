module DirectoryHelper

  def directory_menu
    content_for(:left_column, render(:partial => "shared/directory_menu"))
  end


  def css_current_page_class(path)
	"disabled" if current_page?(path)
  end



  def permission
  	if current_user
    	@permission ||= Permission.new(current_user, self)
    end
  end



end