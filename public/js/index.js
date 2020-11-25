// Phone Modal Navbar
// Open

let dropBtn = document.querySelector('.nav-phone');
let closeBtn = document.querySelector('.close-btn');

dropBtn.addEventListener("click", function(){
  document.querySelector(".pop-up").classList.add("pop-up-block");
});

// close

closeBtn.addEventListener("click", function(){
  document.querySelector(".pop-up").classList.remove("pop-up-block");
})



// Gallery modal 
// open

let galleryCard = ".gallery-card";
let galleryClose = document.querySelector(".close-btn-gallery");

if(galleryCard){
    $('body').on('click', galleryCard, function() {
        $('.modal-card-img').attr('src', $(this).data('full'));
        document.querySelector(".modal-container").classList.add("modal-container-block");
    });
}

// close

if(galleryClose){
  galleryClose.addEventListener("click", function(){
    document.querySelector(".modal-container").classList.remove("modal-container-block");
  });
}

// mobile menu 
// open

let mobileMenuOpen = document.querySelector('.navbar-open-btn');
let mobileMenuClose = document.querySelector('.navbar-close-btn');

  mobileMenuOpen.addEventListener("click", function(){
   document.querySelector('.right-nav').classList.add("right-nav-toggle")
  });

  mobileMenuClose.addEventListener("click", function(){
    document.querySelector('.right-nav').classList.remove("right-nav-toggle")
  })
