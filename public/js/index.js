$(document).ready(function(){
  $(".custom-nav-link").click(function(){
    $(".custom-nav-link").removeClass("custom-nav-link-active");
    $(this).addClass("custom-nav-link-active");
  })
})