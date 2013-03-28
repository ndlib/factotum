class Availability::ServicePointResultPresenter < SimpleDelegator

  def initialize(result_set, context = nil, search_date = Time.zone.today)

    result_set = result_set.collect { | service_point | Availability::ServicePointPresenter.new(service_point, context, search_date) }
    super(result_set)

    @search_date = search_date
    @context = context
    @request = @context.request
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
      Availability::ServicePointPresenter.new(s, @context, @search_date).write_ssi_file
    end
  end


  private


  def services
    res = {}
    self.each do | s |
      res[s.code] =  Availability::ServicePointPresenter.new(s, @context, @search_date).data
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
    <div class="hours regular_hours"></div>
    <div class="hours next_regular_hours"></div>
    <div class="hours hours_exceptions"></div>
  </div>
  <div id="hours_template">
    <h5 class="hours_name"></h5>
    <div class="hours_prepend_text"></div>
    <dl class="hours_rows"></dl>
    <div class="hours_append_text"></div>
  </div>
  <div id="hours_row_template">
    <dt class="hours_day"></dd>
    <dd class="hours_text"></dt>
  </div>
</div>'
  end




end
