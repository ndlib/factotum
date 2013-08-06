jQuery ($) ->

    $(document).on 'shown', ".add-modal", (e) ->
        $(this).find("select:first").focus()

    $(document).on 'submit', ".new_cataloging_entry", (e) ->
        e.preventDefault()
        content_div = $(this).attr 'div_for_content'
        $.post(
            $(this).attr('action')
            $(this).serialize()
            (data, textStatus, jqXHR) ->
                $("##{content_div}").html(data)
        )

