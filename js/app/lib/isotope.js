// Generated by CoffeeScript 1.8.0
(function() {
  $(document).ready(function() {
    var $bioGrid, $container;
    $container = $('.isotope-container');
    $container.imagesLoaded(function() {
      $container.isotope({
        itemSelector: '.post-item'
      });
    });
    $bioGrid = $('.bio-grid');
    $bioGrid.imagesLoaded(function() {
      $bioGrid.isotope({
        itemSelector: '.bio-item'
      });
    });
  });

}).call(this);
