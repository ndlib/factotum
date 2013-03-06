class Availability::ServicePointResultPresenter < SimpleDelegator

  def initialize(result_set, request, search_date = Time.zone.today, context = nil)
    super(result_set)
    @request = request
    @search_date = search_date
    @context = context
  end


  def data
    {
       service_points: services,
       page_builder_template: page_builder_template,
       page_builder_js_file: page_builder_js_file,
       page_builder_css_file: page_builder_css_file,
       page_builder_javascript_call_example: page_builder_script_example
    }
  end


  def to_json(options = {})
    data.to_json
  end


  def write_ssi_files    
    self.each do | s | 
      Availability::ServicePointPresenter.new(s, @search_date, @context).write_ssi_file
    end
  end


  private


  def services
    res = {}
    self.each do | s |
      res[s.code] =  Availability::ServicePointPresenter.new(s, @search_date).data
    end

    res
  end

  def url
    "#{@request.protocol}#{@request.host_with_port}"
  end

  def page_builder_js_file
    File.join(url, ActionController::Base.helpers.asset_path("hours_builder.js"))
  end


  def page_builder_css_file
    File.join(url, ActionController::Base.helpers.asset_path("hours_builder.css"))
  end


  def page_builder_script_example
    sources = []
    self.collect(&:code).each do | code |
      sources << "#{code}: '#destination_html_id_for_#{code}'"
    end
    script = "{ #{sources.join(",")} }"

    "getServiceHours(#{script});"
  end


  def page_builder_template
    '<div id="service_template">
  <div class="service_hours">
    <div class="regular_hours">
    </div>
    <div class="hours_exceptions"></div>
  </div>
  <div id="hours_template">
    <div class="hours">
      <div class="hours_name"></div>
      <div class="hours_prepend_text"></div>
      <div class="hours_rows"></div>
      <div class="hours_append_text"></div>
    </div>
  </div>
  <div id="hours_row_template">
    <div class="hours_row">
      <div class="hours_day"></div>
      <div class="hours_text"></div>
    </div>
  </div>
  </div>'
  end




end
