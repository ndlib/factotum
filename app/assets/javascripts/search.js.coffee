jQuery ($) ->
  searchContainers = $(".find-resources .search-container")

  if searchContainers.length > 0
    window.googleBibkeys = {}

    searchContainers.each ->
      searchContainer = $(this)
      resultsContainer = searchContainer.find('.search-results')
      $.getJSON searchContainer.data('target'), (data) ->
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
      container.find('.cover-type').text(displayType(record))
      library = availabilityLibrary(record)
      if library
        container.find('.availability-library').text(library).append($('<br>'))
      container.find('.availability-text').text(availabilityText(record))
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
          image = $('<img>')
          image.attr('src',result.thumbnail_url)
          $("##{recordID} .cover-image").append(image)

    parseMARC = (string) ->
      if $.type(string) == 'string'
        hash = {}
        split = string.split('$$')
        $.each split, (index,data) ->
          if data != ""
            subfield = data.substring(0,1)
            value = data.substring(1)
            hash[subfield] = value
        hash

    availabilityLibrary = (record) ->
      library = record.display.availlibrary
      libraryType = $.type(library)
      marcArray = []
      displayString = null
      if libraryType == 'string'
        marcArray.push(parseMARC(library))
      else if libraryType == 'array'
        $.each library, (index,availabilityString) ->
          marcArray.push(parseMARC(availabilityString))
      if marcArray.length > 0
        available = false
        displayMarc = marcArray[0]
        $.each marcArray, (index, marc) ->
          if marc["S"] == "available"
            available = true
            displayMarc = marc
        library = displayMarc["L"]
        collection = displayMarc["1"]
        callNumber = displayMarc["2"]
        displayString = "#{displayLibrary(library)} #{collection} #{callNumber}"
      displayString

    availabilityText = (record) ->
      if record.display.availpnx == 'available'
        "Available"
      else
        record.display.availpnx

    displayLibrary = (libraryCode) ->
      libraryCode

    displayType = (record) ->
      string = record.display.type
      # Capitalize the first letter
      string = string.replace /^[a-z]/, (letter) ->
        letter.toUpperCase()
      string
