$(function($) {
  var $window = $(window),
    $body = $('body'),
    $wrapper = $('#wrapper'),
    $header = $('#header'),
    $footer = $('#footer'),
    $main = $('#main'),
    $main_articles = $main.children('article');

  // Initial animations on page load:
  $(window).on('load', function() {
    window.setTimeout(function() {
      $body.removeClass('preload');
    }, 150);
  });

  // Main.
  var delay = 325,
  locked = false;

  $main._show = function(id, initial) {
    var $article = $main_articles.filter('#' + id);
    // No article? Return
    if ($article.length == 0)
      return;
        // Locked?
        if (locked || (typeof initial != 'undefined' && initial === true)) {
          $body.addClass('is-switching');
          $body.addClass('is-article-visible');
          // Deactivate all articles (just in case one's already active)
          $main_articles.removeClass('active');
          // Hide header and Footer
          $header.hide();
          $footer.hide();
          // Show main and article
          $main.show();
          $article.show();
          // Activate article
          $article.addClass('active');
          // Unlock
          locked = false;
          // Unmark as switching.
          setTimeout(function() {
            $body.removeClass('is-switching');
          }, (initial ? 1000 : 0));
          return;
        }
        // Lock
        locked = true;
        // Article already visible? Just swap articles.
        if ($body.hasClass('is-article-visible')) {
          // Deactivate current article
          var $currentArticle = $main_articles.filter('.active');
          $currentArticle.removeClass('active');
          // Show article
          setTimeout(function() {
            // Hide current article
            $currentArticle.hide();
            // Show article
            $article.show();
            // Activate article
            setTimeout(function() {
              $article.addClass('active');
                $window
                  .scrollTop(0)
                  .triggerHandler('resize.flexbox-fix');
                // Unlock
                setTimeout(function() {
                  locked = false;
                }, delay);
            }, 25);
          }, delay);
        } else {
            // Mark as visible
            $body.addClass('is-article-visible');
            // Show article
            setTimeout(function() {
              // Hide header and footer
              $header.hide();
              $footer.hide();
              // Show main and article
              $main.show();
              $article.show();
              // Activate article
              setTimeout(function() {
                $article.addClass('active');
                // Window stuff
                $window
                  .scrollTop(0)
                  .triggerHandler('resize.flexbox-fix');
                  // Unlock
                setTimeout(function() {
                  locked = false;
                }, delay);
              }, 25);
            }, delay);
        }
      };

  $main._hide = function(addState) {
    var $article = $main_articles.filter('.active');
    // Article not visible? Return
    if (!$body.hasClass('is-article-visible'))
      return;
    // Add state?
    if (typeof addState != 'undefined' &&  addState === true)
      history.pushState(null, null, '#');
    // Handle lock
    if (locked) {
      // Mark as switching
      $body.addClass('is-switching');
      // Deactivate article
      $article.removeClass('active');
      // Hide article, main
      $article.hide();
      $main.hide();
      // Show footer and header
      $footer.show();
      $header.show();
      // Unmark as visible
      $body.removeClass('is-article-visible');
      // Unlock
      locked = false;
      // Unmark as switching
      $body.removeClass('is-switching');
      // Window stuff
      $window
        .scrollTop(0)
        .triggerHandler('resize.flexbox-fix');
      return;
    }
    // Lock
    locked = true;
    // Deactivate article
    $article.removeClass('active');
    // Hide article
    setTimeout(function() {
      // Hide article and main
      $article.hide();
      $main.hide();
      // Show footer, header
      $footer.show();
      $header.show();
      // Unmark as visible.
      setTimeout(function() {
        $body.removeClass('is-article-visible');
        // Window stuff
        $window
          .scrollTop(0)
          .triggerHandler('resize.flexbox-fix');
        // Unlock
        setTimeout(function() {
          locked = false;
        }, delay);
      }, 25);
    }, delay);
  };

  // Articles:
  $main_articles.each(function() {
    var $this = $(this);
    // Close.
    $('<div class="close">Close</div>')
      .appendTo($this)
      .on('click', function() {
        location.hash = '';
      });

    // Prevent clicks from inside article from bubbling.
    $this.on('click', function(event) {
      event.stopPropagation();
    });
  });

// Events:
  $body.on('click', function(event) {
    if ($body.hasClass('is-article-visible'))
      $main._hide(true);
  });

  $window.on('keyup', function(event) {
    switch (event.keyCode) {
      case 27:
      // Article visible? Hide.
      if ($body.hasClass('is-article-visible'))
        $main._hide(true);
        break;
      default:
        break;
    }
  });

  $window.on('hashchange', function(event) {
    if (location.hash == '' || location.hash == '#') {
      event.preventDefault();
      event.stopPropagation();
      $main._hide();
    }
    else if ($main_articles.filter(location.hash).length > 0) {
      event.preventDefault();
      event.stopPropagation();
      $main._show(location.hash.substr(1));
    }
  });

// Initialize - Hide main, articles:
  $main.hide();
  $main_articles.hide();

  if (location.hash != '' &&  location.hash != '#')
    $window.on('load', function() {
      $main._show(location.hash.substr(1), true);
    });
});
