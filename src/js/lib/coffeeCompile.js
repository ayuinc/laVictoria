(function() {
  'use-strict';
  $(document).ready(function() {
    var RBGIMG, addBgImg, screenSizes, windowWidth;
    $('.disable-anchors a').click(function(e) {
      e.preventDefault();
    });
    $('[data-href]').click(function(e) {
      var lastPath, locationArr, mainPath, pathObj;
      locationArr = window.location.pathname.split('/');
      lastPath = locationArr[locationArr.length - 1];
      mainPath = locationArr[locationArr.length - 2];
      pathObj = {};
      pathObj[mainPath] = lastPath;
      window.history.pushState(pathObj, '', lastPath);
      document.location.replace($(this).data('href'));
    });
    windowWidth = $(window).width();
    RBGIMG = $('[data-responsive-bg-img]');
    screenSizes = {
      screenPhone: 480,
      screenTablet: 960,
      screenDesktop: 960,
      screenLargeDesktop: 1140
    };
    console.log(windowWidth);
    addBgImg = function(item, img) {
      $(item).addClass('bg-img-block').css({
        'background-image': 'url(' + img + ')'
      });
    };
    $.each(RBGIMG, function(index, item) {
      var imgSizeObj;
      imgSizeObj = $(item).data('responsive-bg-img');
      console.log(imgSizeObj);
      switch (true) {
        case windowWidth <= screenSizes['screenPhone']:
          addBgImg(item, imgSizeObj['vw-phone']);
          break;
        case windowWidth <= screenSizes['screenTablet'] && windowWidth > screenSizes['screenPhone']:
          addBgImg(item, imgSizeObj['vw-tablet']);
          break;
        case windowWidth <= screenSizes['screenDesktop'] && windowWidth > screenSizes['screenTablet']:
          addBgImg(item, imgSizeObj['vw-desktop']);
          break;
        case windowWidth > screenSizes['screenLargeDesktop']:
          addBgImg(item, imgSizeObj['vw-lg-desktop']);
          break;
        default:
          null;
      }
    });
  });

}).call(this);

(function() {
  'use-strict';
  $(document).ready(function() {
    var headerDisplayController, headerScrollScene, scrollToController;
    scrollToController = new ScrollMagic.Controller();
    scrollToController.scrollTo(function(newpos) {
      TweenMax.to(window, 0.5, {
        scrollTo: {
          y: newpos
        }
      });
    });
    $(document).on('click', 'a[href^=#]', function(e) {
      var id;
      id = $(this).attr('href');
      if ($(id).length > 0 && !id.match(/nav/g) && !id.match(/carousel/g)) {
        e.preventDefault();
        scrollToController.scrollTo(id);
      }
    });
    headerDisplayController = new ScrollMagic.Controller();
    headerScrollScene = new ScrollMagic.Scene({
      triggerHook: 'onLeave',
      triggerElement: '.hero-unit',
      duration: $('.site-content').height(),
      offset: 70
    }).setClassToggle('.site-wrapper', 'header-fixed').addTo(headerDisplayController);
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