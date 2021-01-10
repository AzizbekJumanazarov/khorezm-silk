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

$(document).ready(function() {
  //Feedback
  $('#callback-modal form').submit(function (e) {
    e.preventDefault()
    $.ajax({
        url: $(this).attr('action'),
        type: 'POST',
        dataType: 'JSON',
        data: $(this).serialize(),
        success: function(response) {
          if (response.status == 'success') {
            feedbackSuccess();
          }
          else {
              showErrors('#callback-modal form', response.messages)
          }
        }
    });
  });

  $('.navbar-info_callback button').click(function() {
      feedbackDefault();
  });
});

function showErrors(form, data)
{
    var form = $(form);
    var name = form.attr('name');
    var attr_key = 'validation';

    form.find('input').removeClass('is-invalid');
    $.each(data, function (key, value){
        form.find('input[name='+key+']').addClass('is-invalid');
        var id_key = attr_key+'-'+name+'-'+key;
        form.find('#'+id_key).text(value[0]);
    });
}

function feedbackDefault()
{
    $("#callback-modal form").find('input').removeClass('is-invalid');
    $("#callback-modal form")[0].reset();
    $("#callback-modal form").removeClass('inactive');
    $("#callback-modal .success-checkmark").hide();
}

function feedbackSuccess()
{
    $("#callback-modal form").addClass('inactive');
    $("#callback-modal .success-checkmark").hide();
    $("#callback-modal .success-checkmark").show();
}
