jQuery ($) ->
  if $("body.cataloging-page").length > 0
  
    $("a[data-toggle=popover]").each (index, element) =>
        $.get $(element).attr('href'), (data) ->
            $(element).popover({show: true, trigger: 'hover', content: data})


    $(document).on 'submit', ".new_cataloging_entry", (e) ->
        e.preventDefault()
        content_div = $(this).attr 'div_for_content'
        $.post(
            $(this).attr('action')
            $(this).serialize()
            (data, textStatus, jqXHR) ->
                $("##{content_div}").html(data)
                $("input:text").val(this.defaultValue)
        )


    $(document).on 'click', "a[data-toggle=popover]", (e) ->
        e.preventDefault()
      

    $(document).on 'click', "a[data-toggle=modal]", (e) ->
        target = ($ @).attr('data-target')
        url = ($ @).attr('href')
        ($ target).load(url)


    $(document).on 'click', "#genericModal button[data-dismiss=modal]", (e) ->
        $("#genericModal").html()


    $(document).on 'click', "#locationFormatsModal button[data-dismiss=modal]", (e) ->  
        $.get $(@).attr('data-refresh'), (data) ->
            $("#div_locations").html(data)


    $(document).on 'click', "input[data-toggle=button]", (e) ->
        $(@).addClass('btn-disabled');
        $(@).attr('disabled', 'disabled');
        $(@).prop('disabled', true);        
 
  
    formats = $('#default_locations_format').html()
    $(document).on 'change', "#cataloging_entry_location_id", (e) ->
      location = $(@).find(":selected").text()
      escaped_location = location.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
      options = $(formats).filter("optgroup[label='#{escaped_location}']").html()
      if options
        $(@).siblings('#cataloging_entry_format_id').html(options)
      else
        $(@).siblings('#cataloging_entry_format_id').empty()        


    $(document).on 'submit', ".reload_location_format", (e) ->
        e.preventDefault()
        $.post(
            $(@).attr('action')
            $(@).serialize()
        )
        .success (data) ->
            $("#locationFormatsModal").html(data)


    $(document).on 'click', "#locationFormatsModal a[data-dismiss=modal]", (e) ->
        $("#locationFormatsModal").html()
        window.location = this.href



    $(document).on 'keypress', ".admin_form", (e) ->      
        if e.keyCode == 13
            $(this).doModalPost()


    $(document).on 'submit', ".admin_form", (e) ->
        e.preventDefault()
        $(this).doModalPost()        


    $.fn.doModalPost = () ->
        content_div = $(@).attr 'div_for_content'
        $.post(
            $(@).attr('action')
            $(@).serialize()
        )
        .success (data) ->
            $("#genericModal").modal("hide")
            $("#genericModal").html()
            $("##{content_div}").html(data)
        .error (jqXHR, textStatus, errorThrown) ->
            $("#genericModal").modal("show")            
            $("#genericModal").html(jqXHR.responseText)

