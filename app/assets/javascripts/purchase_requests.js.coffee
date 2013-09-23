jQuery ($) ->
  if $("form#new_purchase_request").length > 0
    $('#purchase_request_title').autoGrowInput({
      comfortZone: 20,
      minWidth: 210,
      maxWidth: 660
    })

    $('.title-search-link').click (event) ->
      link = $(this)
      event.preventDefault()
      title = $('#purchase_request_title').val()
      if title
        url = link.data('search-url').replace('PLACEHOLDER',escape(title))
      else
        url = link.attr('href')
      $.colorbox({href: url, iframe: true, width:"95%", height:"95%"})
