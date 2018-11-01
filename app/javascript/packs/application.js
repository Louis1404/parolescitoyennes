import swal from 'sweetalert';
import "bootstrap";

/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb
document.getElementById("testtest").addEventListener("click", sweatalert)



const sweatalert = swal({
  title: "Merci pour votre participation!",
  text: "Nous avons bien reçu votre proposition",
  icon: "success",
  button: "Avec plaisir",
});
