(function() {
  'use-strict';
  $(document).ready(function() {
    $(".onepage-scroll-content").onepage_scroll({
      sectionContainer: "section",
      easing: "ease",
      animationTime: 1000,
      pagination: true,
      updateURL: false,
      loop: false,
      keyboard: true,
      responsiveFallback: false,
      direction: "vertical"
    });
  });

}).call(this);