// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

//CSS
import 'css/main'
import 'css/util'
import 'css/vendor/animsition.min'
import 'css/vendor/daterangepicker'
import 'css/vendor/hamburgers.min'
import 'css/vendor/perfect-scrollbar'
import 'css/vendor/select2.min'
import 'css/vendor/animate'

// Javascript
import('js/main')
import('js/vendor/animsition.min')
import('js/vendor/countdowntime')
import('js/vendor/moment.min')
import('js/vendor/perfect-scrollbar.min')
import('js/vendor/select2.min')

// Images
const images = require.context('../images', true)
const imagePath = (name) => images(name, true)

console.log(imagePath)