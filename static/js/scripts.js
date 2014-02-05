(function() {
  'require strict';



  // Alerts page redirects
  $('[data-redirect]').on('click', function() {
    alert($(this).attr('data-redirect'));
  });

})();
