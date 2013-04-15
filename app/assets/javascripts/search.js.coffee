jQuery ($) ->
  searchContainers = $(".find-resources .search-container")

  if searchContainers.length > 0
    window.googleBibkeys = {}

    searchContainers.each ->
      searchContainer = $(this)
      resultsContainer = searchContainer.find('.search-results')
      console.log(searchContainer.data('target'))
      $.getJSON searchContainer.data('target'), (data) ->
        console.log(data)
        records = data
        currentBibkeys = []
        $.each records, (index,recordContainer) ->
          record = recordContainer.record
          resultsContainer.append(buildRecord(record))
          bibkey = setGoogleBibkey(record)
          if bibkey
            currentBibkeys.push bibkey
        if currentBibkeys.length > 0
          getGoogleBooksData(currentBibkeys)

    buildRecord = (record) ->
      container = $('#recordTemplate .record').clone()
      container.attr('id',record.control.recordid)
      container.find('.title').text(record.display.title)
      container.find('.author').text(record.display.creator)
      container.find('.publisher').text(record.display.publisher)
      container.find('.cover-type').text(record.display.type)
      if record.display.availlibrary
        availability = parseMARC(record.display.availlibrary)
        console.log(availability)
      container.find('.availability').text(record.display.availpnx)
      container

    # Make use of the Client-side API from https://developers.google.com/books/docs/dynamic-links
    setGoogleBibkey = (record) ->
      bibData = record.addata
      if bibData.oclcid
        bibkey = "OCLC:#{bibData.oclcid}"
      else if bibData.isbn
        bibkey = "ISBN:#{bibData.isbn}"
      if bibkey
        window.googleBibkeys[bibkey] = record.control.recordid
      bibkey

    getGoogleBooksData = (bibkeys) ->
      url = "http://books.google.com/books?bibkeys=#{bibkeys.join(',')}&jscmd=viewapi&callback=googleBooksCallback"
      $.getScript(url)

    window.googleBooksCallback = (results) ->
      $.each results, (index,result) ->
        recordID = window.googleBibkeys[result.bib_key]
        if recordID
          console.log(recordID)
          console.log(result)
          image = $('<img>')
          image.attr('src',result.thumbnail_url)
          $("##{recordID} .cover-image").append(image)

    parseMARC = (string) ->
      if $.type(string) == 'string'
        hash = {}
        split = string.split('$$')
        currentIndicator = ''
        $.each split, (index,data) ->
          if data != ""
            indicator = data.substring(0,1)
            value = data.substring(1)
            if /[A-Z]/.test(indicator)
              currentIndicator = indicator
              hash[indicator] = value
            else
              hash["#{currentIndicator}#{indicator}"] = value
        hash

