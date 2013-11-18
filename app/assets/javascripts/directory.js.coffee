jQuery ($) ->

    $("a[data-toggle=popover]").each (index, element) =>
        $.get $(element).attr('href'), (data) ->
            $(element).popover({show: true, trigger: 'hover', content: data})


    $(".collapse").collapse('show')

    
    $(document).on 'click', ".collapse_icon.icon-chevron-up", (e) ->
        ($ @).removeClass('icon-chevron-up').addClass('icon-chevron-down')



    $(document).on 'click', ".collapse_icon.icon-chevron-down", (e) ->
        ($ @).removeClass('icon-chevron-down').addClass('icon-chevron-up')


