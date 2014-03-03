$ = jQuery

$ ->
  $('a.popover_help').popover({
    trigger: 'hover',
    container: 'body'
  }).click ->
    false

  $('a.popover_link').popover({
    trigger: 'hover',
    container: 'body'
  })

  $('a.popover_left').popover({
    trigger: 'hover',
    placement: 'left',
    container: 'body'
  }).click ->
    false
