jQuery ($) ->
  if $("form#new_monographic_order").length > 0 || $("form#new_just_say_yes_order").length > 0
    currencySelect = $('#order_price_code')
    if currencySelect.length > 0
      val = currencySelect.val()
      allCurrencies = $('<optgroup id="all_currencies" label="All Currencies"></optgroup>')
      allCurrencies.append(currencySelect.children())
      selectorCurrencies = $('<optgroup id="selector_currencies" label="Your Currencies"></optgroup>')
      currencySelect.append(selectorCurrencies)
      currencySelect.append(allCurrencies)
      currencySelect.val(val)

    catalogingLocationSelect = $('#order_cataloging_location')
    if catalogingLocationSelect.length > 0
      val = catalogingLocationSelect.val()
      allLocations = $('<optgroup id="all_locations" label="All Locations"></optgroup>')
      allLocations.append(catalogingLocationSelect.children())
      selectorLocations = $('<optgroup id="selector_locations" label="Your Locations"></optgroup>')
      catalogingLocationSelect.append(selectorLocations)
      catalogingLocationSelect.append(allLocations)
      catalogingLocationSelect.val(val)

    if $("form#new_monographic_order").length > 0
      selectedSelector = (netid) ->
        fund = $('#order_fund')
        val = fund.val()
        fund_options = $('#selector_funds_' + netid)
        fund.html(fund_options.html())
        fund.val(val)
        if currencySelect.length > 0
          val = currencySelect.val()
          newCurrencies = $('#selector_currencies_' + netid)
          if newCurrencies.length > 0
            currencySelect.prepend(selectorCurrencies)
            selectorCurrencies.html(newCurrencies.html())
            firstOption = selectorCurrencies.find("option").first()
            if firstOption.length > 0
              firstOption.prop('selected',true)
            else
              currencySelect.val(val)
          else
            selectorCurrencies.detach()
            currencySelect.val(val)
        if catalogingLocationSelect.length > 0
          val = catalogingLocationSelect.val()
          newLocations = $('#selector_cataloging_locations_' + netid)
          if newLocations.length > 0
            catalogingLocationSelect.prepend(selectorLocations)
            selectorLocations.html(newLocations.html())
            firstOption = selectorLocations.find("option").first()
            if firstOption.length > 0
              firstOption.prop('selected',true)
            else
              catalogingLocationSelect.val(val)
          else
            selectorLocations.detach()
            catalogingLocationSelect.val(val)

      $('select#order_selector_netid').change ->
        selectedSelector($(this).val())

      selectedSelector($('#order_selector_netid').val())
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

    $('#titleSearchLink').click (event) ->
      link = $(this)
      event.preventDefault()
      title = $('#order_title').val()
      if title
        url = link.data('search-url').replace('PLACEHOLDER',escape(title))
      else
        url = link.attr('href')
      $.colorbox({href: url, iframe: true, width:"95%", height:"95%"})

