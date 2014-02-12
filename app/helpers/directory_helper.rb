module DirectoryHelper

  def directory_menu
    content_for(:left_column, render(:partial => "shared/directory_menu"))
  end


  def current_page_css_class(menu_link)
	"selected" if params[:controller] == menu_link
  end




end