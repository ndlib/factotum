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

