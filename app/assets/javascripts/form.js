(function() {
  var $;

  $ = jQuery;

  $(function() {
    return $('a.popover_help').popover({
      trigger: 'hover'
    }).click(function() {
      return false;
    });
  });

}).call(this);
