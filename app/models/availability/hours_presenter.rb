require 'nokogiri'

class Availability::HoursPresenter < SimpleDelegator

  def initialize(hours, context = nil)
    super(hours)
    @context = context
  end


  def data
    if __getobj__.nil?
      return { hours: [] }
    end

    {
        name: self.name,
        hours: generate_hours_response,
        prepend_text: self.prepend_text,
        append_text: self.append_text,
        publish_start_date: self.start_date,
        publish_end_date: self.end_date
    }
  end


  def to_json(options = {})
    data.to_json
  end


  def render(print = false)
    if __getobj__.nil?
      ""
    else
      content = @context.render_to_string(partial: "/availability/hours/simple_hours", locals: { hours: self, hours_rows: generate_hours_response })
    end

    if print
      content = convert_a_tags_for_print(content)
    end

    content
  end



  private


  def convert_a_tags_for_print(html)
    frag = Nokogiri::HTML(html)
    frag.xpath("//a").each { |a_tag|  a_tag.name="span"; a_tag.content = "#{a_tag.content}: #{a_tag.get_attribute('href')}" }

    frag.to_html
  end


  def generate_hours_response
    if !__getobj__.nil?
      self.hours
    else
      []
    end
  end

end
