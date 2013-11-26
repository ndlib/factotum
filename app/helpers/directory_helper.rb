module DirectoryHelper

  def directory_menu
    content_for(:left_column, render(:partial => "shared/directory_menu"))
  end


  def current_page_css_class(path)
	   "active" if current_page?(path)
  end




end