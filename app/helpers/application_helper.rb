module ApplicationHelper

  def input_list(input_label_array)
    contents = "".html_safe
    input_label_array.each do |input, label_text, label_options|
      label_options ||= {}
      contents += content_tag(:li, content_tag(:label, input + " " + content_tag(:span, label_text), label_options))
    end
    content_tag(:ul, contents, :class => "inputs-list")
  end
  
  def help_popover(title, content)
    link_to(image_tag("help.png"), "#", "data-original-title" => title, "data-content" => content, :class => "popover_help")
  end
  
  def text_with_help(title, content)
    raw(title) + help_popover(title, content)
  end
  
  def development_only(&block)
    if Rails.env == 'development'
      render :partial => 'shared/development_only', :locals => {:contents => capture(&block) }
    end
    
  end
end
