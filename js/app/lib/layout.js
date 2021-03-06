// Generated by CoffeeScript 1.8.0
(function() {
  var reset, scrollControl;

  $(document).ready(function() {
    var $dropdownToggle, $overlayTrigger, $overlayWork;
    $dropdownToggle = $('.dropdown-toggle');
    $overlayTrigger = $('.overlay-trigger.overlay-us');
    $overlayWork = $('.overlay-trigger.overlay-work');
    $('.disable-anchors a').click(function(e) {
      e.preventDefault();
    });
    $(document).on('scroll', scrollControl);
    $dropdownToggle.click(function(e) {
      e.preventDefault();
      $(this).parent().find('.dropdown').toggleClass('hidden');
    });
  });

  reset = 0;

  scrollControl = function() {
    var opacity, winScroll;
    winScroll = $(window).scrollTop();
    reset = winScroll / 2;
    opacity = 1 - (reset / 100);
    if (winScroll > 140) {
      return;
    } else {
      $('.on-scroll').velocity({
        translateY: -reset + 'px',
        opacity: opacity
      }, {
        duration: 0
      });
    }
  };

}).call(this);
