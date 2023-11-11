$(function(){
  $('.boxred').slideDown();
});

$(function(){
  $('.boxred').mouseover(function(){
    $('.boxred').css({'background-color': '#0000FF'});
  });
});

$(function(){
  $('.boxred').on('click', function(){
    $('.boxred').addClass('box1-ext');
  });
  $('.boxred').mouseout(function(){
    $('.boxred').removeClass('box1-ext');
  });
});