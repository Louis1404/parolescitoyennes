import "bootstrap";

/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
$('.list-inline li').click(function(){
    $('.nav li').removeClass('active');
    $(this).addClass('active');
})

const active = document.querySelector(".navbar-link");
active(.addEventListener("click", (event) => {
  const eventl = event.currentTarget;
  eventl.classList.add("active");
});
