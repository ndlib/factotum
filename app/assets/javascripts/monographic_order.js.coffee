# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ = jQuery
$ ->
  if $("form#new_monographic_order").length > 0
    $('.format_toggle').click =>
      $('.format_option_container').toggle()
      other = $('#monographic_order_format_other')
      if !other.is(':visible')
        other.val('')
      else
        other.focus()
      false
      
    $('.cataloging_location_toggle').click =>
      $('.cataloging_location_option_container').toggle()
      other = $('#monographic_order_cataloging_location_other')
      if !other.is(':visible')
        other.val('')
      else
        other.focus()
      false
  
    $('.fund_toggle').click =>
      $('.fund_option_container').toggle()
      other = $('#monographic_order_fund_other')
      if !other.is(':visible')
        other.val('')
      else
        other.focus()
      false
    
    $('.rush_order_reason_toggle').click =>
      $('.rush_order_reason_option_container').toggle()
      other = $('#monographic_order_rush_order_reason_other')
      if !other.is(':visible')
        other.val('')
      else
        other.focus()
      false
    
    $('#monographic_order_title').autoGrowInput({
      comfortZone: 20,
      minWidth: 210,
      maxWidth: 660
    })