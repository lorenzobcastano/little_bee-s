# Pin npm packages by running ./bin/importmap
pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap" # @5.3.2
pin "@rails/ujs", to: "@rails--ujs.js" # @7.1.3
pin "slim-select", to: "slim-select.js"
pin "@popperjs/core", to: "@popperjs--core.js" # @2.11.8
