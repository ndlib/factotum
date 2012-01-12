# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ = jQuery
$ ->
  if $("form#new_monographic_order").length > 0 || $("form#new_just_say_yes_order").length > 0
    if $("form#new_monographic_order").length > 0
      $('#order_selector_netid').change ->
        selector = $(this)
        fund = $('#order_fund')
        fund_options = $('#selector_' + selector.val())
        fund.html(fund_options.html())
      
    else
      $('#new_just_say_yes_order').submit ->
        alert('PCJSY funds are currently fully expended, please submit your request through normal acquisitions workflows using usual acquisitions funds.  This form is currently not to be used.')
        false
      
      $('#order_electronic_resource_false').click ->
        $('#cataloging_location_container').fadeIn('fast')
      
      $('#order_electronic_resource_true').click ->
        $('#cataloging_location_container').fadeOut('fast')
      
    
    $('.format_toggle').click ->
      $('.format_option_container').toggle()
      other = $('#order_format_other')
      if !other.is(':visible')
        other.val('')
      else
        other.focus()
      false
      
    $('.cataloging_location_toggle').click ->
      $('.cataloging_location_option_container').toggle()
      other = $('#order_cataloging_location_other')
      if !other.is(':visible')
        other.val('')
      else
        other.focus()
      false
  
    $('.fund_toggle').click ->
      $('.fund_option_container').toggle()
      other = $('#order_fund_other')
      if !other.is(':visible')
        other.val('')
      else
        other.focus()
      false
    
    $('.rush_order_reason_toggle').click ->
      $('.rush_order_reason_option_container').toggle()
      other = $('#order_rush_order_reason_other')
      if !other.is(':visible')
        other.val('')
      else
        other.focus()
      false
    
    $('#order_title').autoGrowInput({
      comfortZone: 20,
      minWidth: 210,
      maxWidth: 660
    })
    
    worldcat_hide_alerts = ->
      $('#worldcat_alerts div').hide()
    
    worldcat_search = ->
      link = $('#import_oclc_button')
      worldcat_hide_alerts()
      $('#worldcat_import_loading').fadeIn()
      $.getJSON(link.attr('href'),{oclc_number: $('#order_oclc_number').val(), isbn: $('#order_isbn').val()}, (data, resp)->
        worldcat_hide_alerts()
        $('#order_author').val(data.creator.join('; ')).effect("highlight", 2000)
        $('#order_publication_year').val(data.date).effect("highlight", 2000)
        $('#order_publisher').val(data.publisher).effect("highlight", 2000)
        $('#order_title').val(data.title).keyup().effect("highlight", 2000)
      ).error ->
        worldcat_hide_alerts()
        $('#worldcat_import_failed').fadeIn()
    
    $('#import_oclc_button').click ->
      worldcat_search()
      false
    
    $('#order_oclc_number, #order_isbn').keypress (e)->
      if e.keyCode
        code = e.keyCode
      else
        code = e.which
      if code == 13
        worldcat_search()
        false
      else
        true
      