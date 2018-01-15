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



$(document).ready(function(){
  $('.furnitur-schilling-carusel').slick({
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


        $(document).ready(function(){
          $('.mainpage-header-carusel').slick({
          
            asNavFor: '.mainpage-header-carusel-nav',
          
          
            fade: true,
            arrows: false,

            autoplaySpeed: 2000,
            speed: 700,
      
          infinite: true,

          
          
          });
        });
        $(document).ready(function(){
          $('.mainpage-header-carusel-nav').slick({

            asNavFor: '.mainpage-header-carusel',
            
            arrows: false,
            
              infinite: true,

            slidesToShow: 1,
            centerMode: true,

            autoplay: true,
            autoplaySpeed: 2000,
            speed: 700,

                pauseOnFocus: true,
                pauseOnHover: true,
                pauseOnDotsHover: true,
            
            vertical: true,
            focusOnSelect: true,

          
            
          });
        });

//   ###############   COMMENTS  BEGIN  ############## */ 


    $(document).ready(function(){

      // Плавный скролл по якорям
      $('a[href^="#"]').click(function () { 
          elementClick = $(this).attr("href");
        destination = $(elementClick).offset().top;
        if($.browser.safari){
        $('body').animate( { scrollTop: destination }, 1000 );
        } else {
            $('html').animate( { scrollTop: destination }, 1000 );
        }
        return false;
       });
    });




$(document).ready(function(){
    $("#furnitur_lozung1").on("click","a", function (event) {
        //отменяем стандартную обработку нажатия по ссылке
        event.preventDefault();
 
        //забираем идентификатор бока с атрибута href
        var id  = $(this).attr('href'),
 
        //узнаем высоту от начала страницы до блока на который ссылается якорь
            top = $(id).offset().top;
         
        //анимируем переход на расстояние - top за 1500 мс
        $('body,html').animate({scrollTop: top}, 1500);
    });
});
// ###############   COMMENTS END  ############## 
