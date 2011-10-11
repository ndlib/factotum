$ = jQuery

$ ->
  $('a.popover_help').popover({
    trigger: 'hover'
  }).click ->
    false