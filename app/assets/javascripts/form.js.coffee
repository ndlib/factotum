$ = jQuery

$ ->
  $('a.popover_help').popover({
    trigger: 'hover'
  }).click ->
    false

  $('a.popover_link').popover({
    trigger: 'hover'
  })