class Hours::ServiceResultPresenter < SimpleDelegator

  def initialize(result_set, request, search_date = Date.today)
    super(result_set)
    @request = request
    @search_date = search_date
  end


  def data
    {
       services: services,
       page_builder_template: page_builder_template,
       page_builder_js_file: page_builder_js_file,
       page_builder_css_file: page_builder_css_file,
       page_builder_javascript_call_example: page_builder_script_example
    }
  end


  def to_json(options = {})
    data.to_json
  end


  private

  def services
    res = {}
    self.each do | s |
      res[s.code] =  Hours::ServicePresenter.new(s, @search_date).data
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
    "getServiceHours('code', '#id_of_your_div');"
  end


  def page_builder_template
    '<div id="service_template">
  <div class="service_hours">
    <div class="regular_hours">
      <p>Regular Hours:</p>
    </div>
    <div class="hours_exceptions"></div>
  </div>
  <div id="hours_template">
    <div class="hours">
      <p class="hours_prepend_text"></p>
      <div class="hours_rows"></div>
      <p class="hours_postpend_text"></p>
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
