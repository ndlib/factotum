$ = jQuery

$ ->
  $('a.popover_help').popover({
    trigger: 'hover'
  }).click ->
    false

  $('a.popover_link').popover({
    trigger: 'hover'
  })

  $('a.popover_left').popover({
    trigger: 'hover',
    placement: 'left'
  }).click ->
    false
