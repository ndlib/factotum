(function() {
  var $;

  $ = jQuery;

  $(function() {
    var worldcat_hide_alerts, worldcat_search;
    if ($("form#new_monographic_order").length > 0 || $("form#new_just_say_yes_order").length > 0) {
      if ($("form#new_monographic_order").length > 0) {
        $('#order_selector_netid').change(function() {
          var fund, fund_options, selector;
          selector = $(this);
          fund = $('#order_fund');
          fund_options = $('#selector_' + selector.val());
          return fund.html(fund_options.html());
        });
      } else {
        $('#new_just_say_yes_order').submit(function() {
          alert('PCJSY funds are currently fully expended, please submit your request through normal acquisitions workflows using usual acquisitions funds.  This form is currently not to be used.');
          return false;
        });
        $('#order_electronic_resource_false').click(function() {
          return $('#cataloging_location_container').fadeIn('fast');
        });
        $('#order_electronic_resource_true').click(function() {
          return $('#cataloging_location_container').fadeOut('fast');
        });
      }
      $('.format_toggle').click(function() {
        var other;
        $('.format_option_container').toggle();
        other = $('#order_format_other');
        if (!other.is(':visible')) {
          other.val('');
        } else {
          other.focus();
        }
        return false;
      });
      $('.cataloging_location_toggle').click(function() {
        var other;
        $('.cataloging_location_option_container').toggle();
        other = $('#order_cataloging_location_other');
        if (!other.is(':visible')) {
          other.val('');
        } else {
          other.focus();
        }
        return false;
      });
      $('.fund_toggle').click(function() {
        var other;
        $('.fund_option_container').toggle();
        other = $('#order_fund_other');
        if (!other.is(':visible')) {
          other.val('');
        } else {
          other.focus();
        }
        return false;
      });
      $('.rush_order_reason_toggle').click(function() {
        var other;
        $('.rush_order_reason_option_container').toggle();
        other = $('#order_rush_order_reason_other');
        if (!other.is(':visible')) {
          other.val('');
        } else {
          other.focus();
        }
        return false;
      });
      $('#order_title').autoGrowInput({
        comfortZone: 20,
        minWidth: 210,
        maxWidth: 660
      });
      worldcat_hide_alerts = function() {
        return $('#worldcat_alerts div').hide();
      };
      worldcat_search = function() {
        var link;
        link = $('#import_oclc_button');
        worldcat_hide_alerts();
        $('#worldcat_import_loading').fadeIn();
        return $.getJSON(link.attr('href'), {
          oclc_number: $('#order_oclc_number').val(),
          isbn: $('#order_isbn').val()
        }, function(data, resp) {
          worldcat_hide_alerts();
          $('#order_author').val(data.creator.join('; ')).effect("highlight", 2000);
          $('#order_publication_year').val(data.date).effect("highlight", 2000);
          $('#order_publisher').val(data.publisher).effect("highlight", 2000);
          return $('#order_title').val(data.title).keyup().effect("highlight", 2000);
        }).error(function() {
          worldcat_hide_alerts();
          return $('#worldcat_import_failed').fadeIn();
        });
      };
      $('#import_oclc_button').click(function() {
        worldcat_search();
        return false;
      });
      return $('#order_oclc_number, #order_isbn').keypress(function(e) {
        var code;
        if (e.keyCode) {
          code = e.keyCode;
        } else {
          code = e.which;
        }
        if (code === 13) {
          worldcat_search();
          return false;
        } else {
          return true;
        }
      });
    }
  });

}).call(this);
