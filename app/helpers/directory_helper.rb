module DirectoryHelper

  def directory_menu
    content_for(:left_column, render(:partial => "shared/directory_menu"))
  end


  def current_page_css_class(menu_link, type = nil)
  	if !type.nil?
  		"selected" if params[:controller] == menu_link and params[:type] == type
  	else
		"selected" if params[:controller] == menu_link
	end
  end




end