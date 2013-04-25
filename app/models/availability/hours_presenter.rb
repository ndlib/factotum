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
        prepend_text: prepend_text,
        append_text: append_text,
        publish_start_date: self.start_date,
        publish_end_date: self.end_date,
        short_effective_dates: "<p class=\"dates\">#{effective_short_dates_text}</p>",
        full_effective_dates: "<p class=\"dates\">#{effective_full_dates_text}</p>"
    }
  end


  def to_json(options = {})
    data.to_json
  end


  def render(print = false)
    if __getobj__.nil?
      ""
    else
      content = @context.render_to_string(partial: "/availability/hours/simple_hours", locals: { hours: self, hours_rows: generate_hours_response, print: print })
    end

    if print
      content = convert_a_tags_for_print(content)
    end

    content
  end


  def prepend_text
    return "" if self[:prepend_text].nil? || self[:prepend_text].empty?

    ActionController::Base.helpers.simple_format(self[:prepend_text])
  end


  def append_text
    return "" if self[:append_text].nil? || self[:append_text].empty?

    ActionController::Base.helpers.simple_format(self[:append_text])
  end


  def effective_full_dates_text
    "Effective from #{start_date.to_s(:short_ordinal)} - #{end_date.to_s(:short_ordinal)}"
  end


  def effective_short_dates_text
    "Effective on #{start_date.to_s(:short_ordinal)}"
  end


  def use_full_effective_date?
    (__getobj__.class == Availability::HoursException)
  end


  def use_short_effective_date?
    (self.start_date > Time.now && __getobj__.class == Availability::RegularHours)
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
