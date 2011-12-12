$ = jQuery
$ ->
  if $("#ejournal_search_form").length > 0
    if $("#ejournal_advanced_active").length > 0
      $(".ejournal_simple").hide();
    else
      $(".ejournal_advanced").hide();
    
    $("#ejournal_advanced_link").click ->
      $(".ejournal_keywords").removeClass("long").addClass("medium");
      $(".ejournal_advanced").fadeIn("fast")
      $(".ejournal_simple").hide()
      false