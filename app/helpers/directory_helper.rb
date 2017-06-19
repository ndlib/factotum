module DirectoryHelper

  def directory_menu
    content_for(:left_column, render(:partial => "shared/directory_menu"))
  end

  def current_page_css_class(menu_link, type = nil)
    if type == "DirectoryPhotoGallery" and params[:action] == "photos"
      "selected"
    elsif params[:controller] == menu_link and (type.nil? || params[:type] == type) and params[:action] != "photos"
      "selected"
    end
  end


  def photo_path
  	"//resources.library.nd.edu/images/directory/"
  end


end
