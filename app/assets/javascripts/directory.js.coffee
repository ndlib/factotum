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
            $("#directoryModal").modal("hide")
            $("#directoryModal").html()
            $("##{content_div}").html(data)
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
                { "bVisible": false }
                ],
            sPaginationType: "bootstrap",
            "bPaginate": false,
            "sDom": '<"top"<"dataTables_top_left">f><"clear">rt<"bottom"><"clear">'
        })
        $('div.dataTables_top_left').html '<label><span class="gold">SL</span>= Subject Librarian</label>'
        
    
    $(document).ready ->
        $("#directory_subject_full_list").dataTable({
            "aoColumns": [
                null,
                null,
                null,
                null,
                { "bVisible": false }
                ],
            sPaginationType: "bootstrap",
            "bPaginate": false,
            "sDom": '<"top"f><"clear">rt<"bottom"><"clear">' 
        })
    
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
