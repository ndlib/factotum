jQuery ($) ->
  if $("body.directory-page").length > 0

    $("a[data-toggle=popover]").each (index, element) =>
        $.get $(element).attr('href'), (data) ->
            $(element).popover({show: true, trigger: 'hover', content: data})


    $(document).on 'submit', ".delete_form", (e) ->
        e.preventDefault()
        if confirm "Are you sure you wish to delete?"
          $(this).doDeletePost()


    $(document).on 'click', "a[data-toggle=modal]", (e) ->
        target = ($ @).attr('data-target')
        url = ($ @).attr('href')
        ($ target).load(url)


    $(document).on 'click', "a[data-toggle=popover]", (e) ->
        e.preventDefault()

    $(document).on 'click', "#directoryModal button[data-dismiss=modal]", (e) ->
        $("#directoryModal").html()


    $(document).on 'keypress', ".directory_form", (e) ->      
        if e.keyCode == 13
            e.preventDefault()
            $(this).doModalPost()


    $(document).on 'submit', ".directory_form", (e) ->
        e.preventDefault()
        $(this).doModalPost()        


    $.fn.doModalPost = () ->
        content_div = $(@).attr 'div_for_content'
        $.post(
            $(@).attr('action')
            $(@).serialize()
        )
        .success (data) ->
            console.log(data)
            if content_div?
                $("#directoryModal").modal("hide")
                $("#directoryModal").html()
                $("##{content_div}").html(data)
            else
                window.location.href = data.location
        .error (jqXHR, textStatus, errorThrown) ->
            $("#directoryModal").modal("show")            
            $("#directoryModal").html(jqXHR.responseText)


    $.fn.doDeletePost = () ->
        content_div = $(@).attr 'div_for_content'
        $.post(
            $(@).attr('action')
            $(@).serialize()
        )
        .success (data) ->
            $("##{content_div}").html(data)
        .error (jqXHR, textStatus, errorThrown) ->         
            $("#notices").html(jqXHR.responseText)


    $(".collapse").collapse('show')
    
    $(document).on 'click', ".arrow-icon.down", (e) ->
        ($ @).removeClass('down').addClass('right')


    $(document).on 'click', ".arrow-icon.right", (e) ->
        ($ @).removeClass('right').addClass('down')


    $(document).on 'click', "#alphabet-list li a", (e) ->
        e.preventDefault()
        $("#alphabet-list li").removeClass('active')
        ($ @).parent().addClass('active')
        $('tbody > tr').show()
        if ($ @).text() != "All"
            $('tbody > tr:not( [name="' + ($ @).text() + '"] )').hide()



    $(".subject_librarian_info").popover({trigger: 'hover', html: true})

    $.extend( $.fn.dataTableExt.oStdClasses, {
        "sWrapper": "dataTables_wrapper form-inline"
        } )


    $(document).ready ->
        $("#directory_employee_full_list").dataTable({
            "aoColumns": [
                { sWidth: '135px' },
                { sWidth: '150px' },
                null,
                { sWidth: '90px' },
                { sWidth: '100px' },
                null,
                { "bVisible": false }
                ],
            sPaginationType: "bootstrap",
            "bPaginate": false,
            "oLanguage": { "sSearch": "" },
            "sDom": '<"top"<"dataTables_top_left">f><"clear">rt<"bottom"><"clear">'
        })
        $('div.bottom').html '<label><span class="gold">SL</span>= Subject Librarian</label>'
        $('.dataTables_filter input').attr("placeholder", "Search any fields")
        
    
    $(document).ready ->
        $("#directory_subject_full_list").dataTable({
            "aoColumns": [
                null,
                { sWidth: '130px' },
                { sWidth: '130px' },
                { sWidth: '100px' }
                ],
            sPaginationType: "bootstrap",
            "bPaginate": false,
            "sDom": '<"top"f><"clear">rt<"bottom"><"clear">' 
        })
        $('.dataTables_filter input').attr("placeholder", "Search any fields")
    
    $(document).ready ->
        $("#directory_department_full_list").dataTable({
            "aoColumns": [
                { sWidth: '260px' },
                { "bVisible": false },
                { sWidth: '135px' },
                null,
                { sWidth: '110px' }
                ],
            sPaginationType: "bootstrap",
            "bPaginate": false,
            "sDom": '<"top"f><"clear">rt<"bottom"><"clear">' 
        })
        $('.dataTables_filter input').attr("placeholder", "Search any fields")


    $("a[data-target^='#hiddenAboutText_']").click ->
      (if ($(this).text() is "- more -") then $(this).text("- less -") else $(this).text("- more -"))
      return

    `function floorName(floor) {`
    switch floor
      when "1" then return "first"
      when "2" then return "second"
      when "3" then return "third"
      when "4" then return "fourth"
      when "5" then return "fifth"
      when "6" then return "sixth"
      when "7" then return "seventh"
      when "8" then return "eigth"
      when "9" then return "ninth"
      when "10" then return "tenth"
      when "11" then return "eleventh"
      when "12" then return "twelfth"
      when "13" then return "thirteenth"
      else return "lower_level"
    `}`

    $(document).ready ->
      hesburghRegexp = /([^ ]+) Hesburgh/
      $("[itemprop='streetAddress']").each ->
        if $(this).text().match(hesburghRegexp) != null
          room = $(this).text().match(hesburghRegexp)[1]
          floor = room.match(/([0-9]+)[0-9]{2}/)[1]
          $(this).wrap("<a href='http://library.nd.edu/about/maps/" + floorName(floor) + ".shtml'>")
        else
          $(this).wrap("<a href='http://library.nd.edu/about/maps/locations.shtml'>")
        return
