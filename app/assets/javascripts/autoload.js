$(function () {
  var $body           = $('body'),
      path_components = $body.data('controller').split('/'),
      action          = $body.data('action'),
      object          = sakila;

  $.each( path_components, function () { object = object[this]; });

  if (object !== undefined) {
    $.each( ['init', action], function () {
      if ( $.isFunction(object[this]) ) {
        object[this]();
      }
    });
  }
});
