# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap/dist/js/bootstrap.bundle.min.js"
pin "jquery", to: "jquery/dist/jquery.min.js"
# config/importmap.rb

pin "font-awesome", to: "font-awesome/css/font-awesome.min.css", preload: true
