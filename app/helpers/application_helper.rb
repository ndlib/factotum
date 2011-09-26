module ApplicationHelper

  def development_only(&block)
    if Rails.env == 'development'
      render :partial => 'shared/development_only', :locals => {:contents => capture(&block) }
    end
    
  end
end
