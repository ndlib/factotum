module ApplicationHelper

  def input_list(input_label_array)
    contents = "".html_safe
    input_label_array.each do |input, label_text, label_options|
      label_options ||= {}
      contents += content_tag(:li, content_tag(:label, input + " " + content_tag(:span, label_text), label_options))
    end
    content_tag(:ul, contents, :class => "inputs-list")
  end

  def help_popover(title, content, klass = "popover_help")
    link_to(image_tag("help.png"), "#", "data-original-title" => title, "data-content" => content, :class => klass)
  end

  def text_with_help(title, content)
    raw(title) + help_popover(title, content)
  end

  def homepage_link
    @homepage_link || link_to("Hesburgh Libraries", Rails.configuration.library_url)
  end

  def set_homepage_link(link)
    @homepage_link = link
  end

  def worldcat_alerts
    render partial: "shared/worldcat_alerts"
  end
end
