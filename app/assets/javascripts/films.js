sakila.films = {
  init: function () {},

  index: function () {
    var $search = $('#search');

    $search.autocomplete({
      source: '/films.json',
      select: function (event, ui) {
        window.location.href = '/films/' + ui.item.id;
      }
    });
  }
};
