(function() {

  jQuery(function($) {
    var addHoursRowToTemplate, addHoursToTemplate, createHoursTemplate, doc, setValues, win;
    win = $(window);
    doc = $(document);
    window.getServiceHours = function(services_to_destinations) {
      var destination, key, request, service_codes;
      service_codes = [];
      for (key in services_to_destinations) {
        destination = services_to_destinations[key];
        service_codes << key;
      }
      request = $.getJSON('/hours/api/', {
        codes: service_codes.join()
      });
      return request.success(function(data) {
        var code, pageTemplate, service, _results;
        pageTemplate = $(data.page_builder_template);
        _results = [];
        for (code in services_to_destinations) {
          destination = services_to_destinations[code];
          service = data["service_points"][code];
          _results.push(createHoursTemplate(service, destination, pageTemplate));
        }
        return _results;
      });
    };
    createHoursTemplate = function(jsonData, destination, pageTemplate) {
      var external_hours_row, template, _i, _len, _ref;
      template = pageTemplate.find(" .service_hours").clone();
      addHoursToTemplate(template, 'regular_hours', jsonData.regular_hours, pageTemplate);
      _ref = jsonData.hours_exceptions;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        external_hours_row = _ref[_i];
        addHoursToTemplate(template, 'hours_exceptions', external_hours_row, pageTemplate);
      }
      return $(destination).append(template);
    };
    addHoursToTemplate = function(template, location, hours, pageTemplate) {
      var hours_template, row, _i, _len, _ref;
      hours_template = pageTemplate.find('#hours_template .hours').clone();
      setValues(hours_template.find('.hours_prepend_text'), hours.prepend_text);
      setValues(hours_template.find('.hours_postpend_text'), hours.postpend_text);
      _ref = hours.hours;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        row = _ref[_i];
        addHoursRowToTemplate(hours_template, row, pageTemplate);
      }
      return template.find("." + location).append(hours_template);
    };
    addHoursRowToTemplate = function(hours_template, row_data, pageTemplate) {
      var row_template;
      row_template = pageTemplate.find("#hours_row_template .hours_row").clone();
      setValues(row_template.find('.hours_day'), row_data.days);
      setValues(row_template.find('.hours_text'), row_data.hours);
      return hours_template.find(".hours_rows").append(row_template);
    };
    return setValues = function(elements, value) {
      if (value) {
        return elements.each(function() {
          var element, nodeName;
          nodeName = this.nodeName.toLowerCase();
          element = $(this);
          if (nodeName === "a") {
            return element.text(value).attr('href', value);
          } else if (nodeName === "input") {
            return element.attr('value', escape(value));
          } else {
            return element.html(value);
          }
        });
      }
    };
  });

}).call(this);
