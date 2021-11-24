// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap'

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import { initSelect2 } from '../components/init_select2';
import { loadDynamicBannerText } from '../components/banner';
import { initSweetalert } from '../plugins/init_sweetalert';

document.addEventListener("turbolinks:load", function () {
  initSelect2();
  loadDynamicBannerText();
  initSweetalert('#sweet-alert-demo', {
    title: "Are you sure?",
    text: "This action cannot be reversed",
    icon: "warning"
  }, (value) => {
    if (value) {
      const link = document.querySelector('#delete-link');
      link.click();
    }
  });
  initSweetalert('#sweet-alert-pause', {
    title: "Testing?",
    text: "This action cannot be reversed",
    icon: "warning"
  }, (value) => {
    if (value) {
      const link = document.querySelector('#delete-link');
      link.click();
    }
  });
});


console.log("Hello from app/javascript/packs/application.js!");
