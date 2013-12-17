jQuery ($) ->
  if $("body.directory-page").length > 0

    $("a[data-toggle=popover]").each (index, element) =>
        $.get $(element).attr('href'), (data) ->
            $(element).popover({show: true, trigger: 'hover', content: data})


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


    $('#wmd-input-about_text').popover({trigger: 'manual', content: $('#wmd-preview-about_text'), html: true, placement: 'right', title: 'Preview' })
    
    $(document).on 'focus', "#wmd-input-about_text", (e) ->
        $('#wmd-preview-about_text').show();
        ($ @).popover('show')
    
    $(document).on 'blur', ".wmd-panel", (e) ->
        ($ @).popover('hide')

    $(".collapse").collapse('show')
    
    $(document).on 'click', ".collapse_icon.icon-chevron-up", (e) ->
        ($ @).removeClass('icon-chevron-up').addClass('icon-chevron-down')


    $(document).on 'click', ".collapse_icon.icon-chevron-down", (e) ->
        ($ @).removeClass('icon-chevron-down').addClass('icon-chevron-up')


    $(".subject_librarian_info").popover({trigger: 'hover', html: true})

    $.extend( $.fn.dataTableExt.oStdClasses, {
        "sWrapper": "dataTables_wrapper form-inline"
        } )

    $(document).ready ->
        $("#directory_employee_full_list").dataTable({
            "aoColumns": [
                null,
                null,
                { "bVisible": false },
                null,
                null,
                { "bVisible": false },
                { "bVisible": false }
                ],
            sPaginationType: "bootstrap",
            "bPaginate": false,
            "sDom": '<"top"f><"clear">rt<"bottom"><"clear">' 
        })
    
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
        $('textarea.wmd-input').each (i, input) ->
            attr = $(input).attr('id').split('wmd-input')[1]
            converter = new Markdown.Converter()
            
            converter.hooks.chain "preConversion", (text) ->
                return "<h1>About</h1>" + text

            converter.hooks.chain "postSpanGamut", (text) ->
                return text.replace(/[^>](?=\n)/g, "<br />")

            converter.hooks.chain "postNormalization", (text) ->
                return text.replace(/\n/g, "  \n")
  
            Markdown.Extra.init converter,  ->
                extensions: "fencedCodeBlocks"

            editor = new Markdown.Editor(converter, attr)
            editor.run()

    
    $(document).ready ->
        $("#directory_department_full_list").dataTable({
            "aoColumns": [
                null,
                { "bVisible": false },
                null,
                null,
                null,
                { "bVisible": false }
                ],
            sPaginationType: "bootstrap",
            "bPaginate": false,
            "sDom": '<"top"f><"clear">rt<"bottom"><"clear">' 
        })
