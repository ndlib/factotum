jQuery ($) ->

    $('#wmd-input-0').popover({trigger: 'manual', content: $('#wmd-preview-0'), html: true, placement: 'right', title: 'Preview' })
    
    $(document).on 'focus', "#wmd-input-0", (e) ->
        $('#wmd-preview-0').show();
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
