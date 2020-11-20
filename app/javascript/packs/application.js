// CSS
// import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports

// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";




import { initMapbox } from '../plugins/init_mapbox';
document.addEventListener('turbolinks:load', () => {
  initMapbox();
})


const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () =>
container.classList.add('right-panel-active'));

signInButton.addEventListener('click', () =>
container.classList.remove('right-panel-active'));


// var basicTimeline = anime.timeline({
//   autoplay: false
// });

// var pathEls = $(".check");
// for (var i = 0; i < pathEls.length; i++) {
//   var pathEl = pathEls[i];
//   var offset = anime.setDashoffset(pathEl);
//   pathEl.setAttribute("stroke-dashoffset", offset);
// }

// basicTimeline
//   .add({
//     targets: ".text",
//     duration: 1,
//     opacity: "0"
//   })
//   .add({
//     targets: ".button",
//     duration: 1300,
//     height: 10,
//     width: 300,
//     backgroundColor: "#2B2D2F",
//     border: "0",
//     borderRadius: 100
//   })
//   .add({
//     targets: ".progress-bar",
//     duration: 2000,
//     width: 300,
//     easing: "linear"
//   })
//   .add({
//     targets: ".button",
//     width: 0,
//     duration: 1
//   })
//   .add({
//     targets: ".progress-bar",
//     width: 80,
//     height: 80,
//     delay: 500,
//     duration: 750,
//     borderRadius: 80,
//     backgroundColor: "#71DFBE"
//   })
//   .add({
//     targets: pathEl,
//     strokeDashoffset: [offset, 0],
//     duration: 200,
//     easing: "easeInOutSine"
//   });

// $(".button").click(function() {
//   basicTimeline.play();
// });

// $(".text").click(function() {
//   basicTimeline.play();
// });


