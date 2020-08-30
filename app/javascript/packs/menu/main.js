document.addEventListener("turbolinks:load", function() {
  window.setTimeout(function() {
    $('body').removeClass('preload');
  }, 550);
})
