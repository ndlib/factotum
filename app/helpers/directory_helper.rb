module DirectoryHelper

  def directory_menu
    content_for(:left_column, render(:partial => "shared/directory_menu"))
  end

  def current_page_css_class(menu_link, type = nil)
  	"selected" if params[:controller] == menu_link and (type.nil? || params[:type] == type)
  end


  def photo_path
  	"//library.nd.edu/images/directory/"
  end


end