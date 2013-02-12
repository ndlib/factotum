jQuery ($) ->
  win = $(window)
  doc = $(document)
  options_values = ['monday','tuesday','wednesday','thursday','friday','saturday','sunday']
  
  $('a.notification_email_change').click ->
    $(this).parent().hide()
    $(this).parent().next('form').show()
    false

  $('.hours_continue_button').click ->
    $(this).parents('.modal').find('form').submit()
    return false

  $('.datepicker').datepicker()

  $('.datepicker').change ->
    checkStartAndEndDate()

  $('#clear_form').click ->
    $('.hours-day-row select').val("")
    return false

  $('.editable').click ->
    $(this).hide()
    $("#" + $(this).attr('id') + "_form_element").show()

  $('.editable').keypress ->
    $(this).click()
    $(this).next('textarea').focus()
    false

  $('.hours-day-start').change ->
    end_select = $(this).parents('.hours-day-row').find('.hours-day-end')
    if !selectCompleted(end_select)
      end_select.val($(this).val())
    disableUsedOptions()
    checkCreateNewHoursRow()


  $('.hours-day-end').change ->
    current_row = $(this).parents('.hours-day-row')
    if checkHoursDayEndBeforeStart(current_row)
      return

    next_select = $(this).parents('.hours-day-row').next().find('.hours-day-start')

    if !selectCompleted(next_select)
      next_select.val($(this).val())
      next_select.find('option:selected', 'select').removeAttr('selected').next('option').attr('selected', 'selected');
    disableUsedOptions()
    checkCreateNewHoursRow()


  disableUsedOptions = () ->
    $('.hours-day-row').find('option').removeAttr('disabled')
    $('.hours-day-row').each ->
      next_row = $(this).nextAll()

      val1 = $(this).find('.hours-day-start').val()
      val2 = $(this).find('.hours-day-end').val()
      disable_values = options_values.slice(options_values.indexOf(val1), options_values.indexOf(val2) + 1)

      $(next_row).find('option').filter ->
        if disable_values.indexOf($(this).val()) != -1
          $(this).attr('disabled', 'disabled')


  checkCreateNewHoursRow = () ->
    all_rows = $('.hours-day-row')
    total_size = all_rows.length
    completed_rows = 0
    all_rows.each ->
      if elementsCompleted($(this))
        completed_rows += 1
    if completed_rows >= (total_size - 2) && !(checkSelectedEndDateSaturday() || checkSelectedEndDateSunday())
      addNewRow()

  checkSelectedEndDateSaturday = () ->
    found = false
    $('.hours-day-row .hours-day-end').each ->
      if $(this).val() == "sa"
        found = true
    return found

  checkSelectedEndDateSunday = () ->
    found = false
    $('.hours-day-row .hours-day-end').each ->
      if $(this).val() == 'su'
        found = true
    return found

  checkHoursDayEndBeforeStart = (row) ->
    sel1_value = row.find('.hours-day-start').val()
    sel2_value = row.find('.hours-day-end').val()
    if options_values.indexOf(sel2_value) < options_values.indexOf(sel1_value)
      row.find('.help-block').html('The "to" day cannot be earlier in the week then the "from" day')
      row.find('.hours-day-end').val("")
      row.addClass('error')
      return true
    else
      row.removeClass('error')
      row.find('.help-block').html('')
    return false

  checkStartAndEndDate = () ->
    start_date =  Date.parse($('#availability_regular_hours_start_date').val())
    end_date   =  Date.parse($('#availability_regular_hours_end_date').val())
    parent = $('#availability_regular_hours_start_date').parents('div.control-group')
    if start_date && end_date && end_date < start_date
      parent.append("<p class=\"help-block\">The end date may not be before the start date.</p>")
      parent.addClass('error')
    else
      parent.find('.help-block').html("")
      parent.removeClass('error')



  elementsCompleted = (row) ->
    (selectCompleted(row.find('.hours-day-start')) || inputCompleted(row.find('.hours-day-input')))


  selectCompleted = (select) ->
    select.val()


  inputCompleted = (input) ->
    input.val() != ""


  addNewRow = () ->
    new_row = $('.row_template .hours-day-row').last().clone()
    new_row.hide()
    $('#hours-day-form').append(new_row)
    new_row.fadeIn(1.0)