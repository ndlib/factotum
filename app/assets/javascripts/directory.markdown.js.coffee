jQuery ($) ->
  if $("body.directory-page").length > 0

    $(document).ready ->
        $('textarea.wmd-input').each (i, input) ->
            attr = $(input).attr('id').split('wmd-input')[1]
            converter = new Markdown.Converter()

            # this catches anything with multiple line breaks before they get stripped later in process
            converter.hooks.chain "preConversion", (text) ->
                re = new RegExp("\n(?=\n)", "mg")
                return text.replace(re, "\n\n")

            # this catches any line breaks within the "span" (block of text)
            converter.hooks.chain "preSpanGamut", (text) ->
                return text.replace(/\n/g, "   \n")                

            converter.hooks.chain "postConversion", (text) ->
                return "<div class='highlight'><h2>About</h2></div><div class='aboutText'>" + text + "</div>"

  
  
            Markdown.Extra.init converter,  ->
                extensions: "fencedCodeBlocks"

            editor = new Markdown.Editor(converter, attr)
            editor.run()

            $('.directory_employee_about_text').find('#wmd-bold-button-about_text').attr('title', 'Bold')
            $('.directory_employee_about_text').find('#wmd-italic-button-about_text').attr('title', 'Italics')
            $('.directory_employee_about_text').find('#wmd-quote-button-about_text').attr('title', 'Block-Quote')
            $('.directory_employee_about_text').find('#wmd-olist-button-about_text').attr('title', 'Numbered List')
            $('.directory_employee_about_text').find('#wmd-ulist-button-about_text').attr('title', 'Bulleted List')
            $('.directory_employee_about_text').find('#wmd-heading-button-about_text').attr('title', 'Heading')
            $('.directory_employee_about_text').find('#wmd-undo-button-about_text').attr('title', 'Undo')
            $('.directory_employee_about_text').find('#wmd-redo-button-about_text').attr('title', 'Redo')


            $('.directory_employee_about_text').find('#wmd-image-button-about_text').remove()
            $('.directory_employee_about_text').find('#wmd-link-button-about_text').remove()
            $('.directory_employee_about_text').find('#wmd-code-button-about_text').remove()
            $('.directory_employee_about_text').find('#wmd-hr-button-about_text').remove()


    $('#wmd-input-about_text').popover({trigger: 'manual', content: $('#wmd-preview-about_text'), html: true, placement: 'right', title: 'Preview', height: '10%' })
    
    $(document).on 'focus', "#wmd-input-about_text", (e) ->
        $('#wmd-preview-about_text').show()
        ($ @).popover('show')
        #$('.wmd-panel').find('.popover').height('90%')
        #$('.wmd-panel').find('.popover').top('10%')
    
    $(document).on 'blur', ".wmd-panel", (e) ->
        ($ @).popover('hide')