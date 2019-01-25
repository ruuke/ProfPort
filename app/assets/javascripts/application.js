// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require rails-ujs
//= require jquery
//= require popper
//= require bootstrap-sprockets
//= require slider.js

$(function() {
  const PREFIX = "/assets/slider/";
  let slides = ['slide1.jpg', 'slide2.jpg', 'slide3.jpg', 'slide4.jpg'];
  let currentSlide = 0;
  let slideInterval = setInterval(moveRight, 2000);

  $('#slide-right').on('click', moveRight);

  function moveRight() {
    move(currentSlide+1);
  }

  $('#slide-left').on('click', moveLeft);

  function moveLeft() {
    move(currentSlide-1);
  }

  function move(n) {
    // event.preventDefault();
    currentSlide = (n+slides.length) % slides.length;
    $('#slide').attr('src', `${PREFIX}${slides[currentSlide]}`);
  }

  $('#slide').mouseenter(function() {
        clearInterval(slideInterval);
    }), mouseleave(function() {
        let slideInterval = setInterval(moveRight, 2000);
    });
});
