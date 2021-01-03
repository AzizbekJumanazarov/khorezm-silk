$(document).ready(function(){

  // mobile navbar

  let mobileMenuButton = $(".mobile_navbar_toggle");
  let mobileNavbar = $("#mobile_menu");
  
  mobileMenuButton.click(function(){
    // mobile navbar toggle
    mobileNavbar.toggleClass("mobile_navbar_toggle");

    // black shadow
    $(".navbar-layout").toggleClass("header__opacite");
    
    // change color of toggle button 
    $(".svg_path").toggleClass("svg_path__color");
  })
  
  // tab active link

  $(".custom-nav-link").click(function(){
    $(".custom-nav-link").removeClass("custom-nav-link-active");
    $(this).addClass("custom-nav-link-active");
  });




})

// navbar button 

const menu = document.querySelector("svg");
menu.addEventListener("click", morph);

function morph() {
  menu.classList.toggle("open");
}

