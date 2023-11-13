const swiper = new Swiper('.swiper', {
  //オプションの設定
  loop: true,
  
  pagination: { 
    el: '.swiper-pagination',
  },

  navigation: { 
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  }
});