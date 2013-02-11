jQuery ($) ->
  win = $(window)
  doc = $(document)

  window.getServiceHours = (services_to_destinations) ->
    service_codes = []
    for key, destination of services_to_destinations
      service_codes << key

    request = $.getJSON '/availability/api/', { codes: service_codes.join() }
    request.success (data) ->
      pageTemplate = $(data.page_builder_template)
      for code, destination of services_to_destinations
        service = data["service_points"][code]
        createHoursTemplate(service, destination, pageTemplate)
    request


  createHoursTemplate = (jsonData, destination, pageTemplate) ->
    template = pageTemplate.find(" .service_hours").clone()
    addHoursToTemplate(template, 'regular_hours', jsonData.regular_hours, pageTemplate)
    for external_hours_row in jsonData.hours_exceptions
      addHoursToTemplate(template, 'hours_exceptions', external_hours_row, pageTemplate)
    $(destination).append(template)


  addHoursToTemplate = (template, location, hours, pageTemplate) ->
    hours_template = pageTemplate.find('#hours_template .hours').clone()
    setValues(hours_template.find('.hours_prepend_text'), hours.prepend_text)
    setValues(hours_template.find('.hours_postpend_text'), hours.postpend_text)
    for row in hours.hours
      addHoursRowToTemplate(hours_template, row, pageTemplate)
    template.find(".#{location}").append(hours_template)


  addHoursRowToTemplate = (hours_template, row_data, pageTemplate) ->
    row_template = pageTemplate.find("#hours_row_template .hours_row").clone()
    setValues(row_template.find('.hours_day'), row_data.days)
    setValues(row_template.find('.hours_text'), row_data.hours)
    hours_template.find(".hours_rows").append(row_template)


  setValues = (elements,value) ->
    if value
      elements.each( ->
        nodeName = this.nodeName.toLowerCase()
        element = $(this)
        if nodeName == "a"
          element.text(value).attr('href',value)
        else if nodeName == "input"
          element.attr('value',escape(value))
        else
          element.html(value)
      )




