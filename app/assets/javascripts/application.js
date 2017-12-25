// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require cocoon
//= require bootstrap-sprockets
//= require_tree .
//= require fotorama
//= require jquery.slick



$(document).ready(function(){
    $('#nav-toggle').click(function(){
        $(this).toggleClass('active');
    });
});








$(document).ready(function(){
  $('.contact-salon-topcarusel').slick({
  width: 300,
  arrows: false,
  
  autoplay: true,
    autoplaySpeed: 0,
    speed: 2500,
    cssEase: 'linear',

    pauseOnFocus: true,
    pauseOnHover: true,
    pauseOnDotsHover: true,
  
  dots: true,
  infinite: true,

  variableWidth: true,

  });
});