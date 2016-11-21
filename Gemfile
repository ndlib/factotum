source "http://rubygems.org"

group :application do
  gem "rails", "~> 4.2.0"

  gem "active_attr"
  gem "american_date"
  gem "devise"
  gem "devise_cas_authenticatable"
  gem "exception_notification", "~> 4.1.0"
  gem "google_drive"
  gem "hesburgh_assets", :git => "git@git.library.nd.edu:assets"
  gem "hesburgh_infrastructure", git: "git@git.library.nd.edu:hesburgh_infrastructure"
  gem "jquery-rails", "~> 2.1.4"
  gem "json"
  gem "kaminari"
  gem "mechanize"
  gem "money"
  gem "mysql2", "~> 0.3.17"
  gem "net-ldap"
  gem "paperclip"
  gem "rb-readline"
  gem "recaptcha", :require => "recaptcha/rails"
  gem "redcarpet"
  gem "simple_form"
  gem "worldcat"
  gem "therubyracer"

  gem "backgroundrb-rails3", :require => "backgroundrb"

  gem "twitter-bootstrap-rails"
  gem "jquery-datatables-rails"

  # Faraday
  gem "faraday"
  gem "faraday_middleware"
  gem "excon"
  gem "typhoeus"
  gem "virtus"
  gem "multi_xml"

  # for static pages
  gem "high_voltage", "~> 2.2.1"
end

gem "whenever", :require => false

gem "rake", ">= 10.0.3"

gem "newrelic_rpm"

# For Errbit
gem "airbrake", "4.3.0"

gem "capistrano"

gem "sass-rails", "~> 4.0.0"
gem "coffee-rails", "~> 4.0.0"
gem "uglifier", ">= 1.3.0"
gem "pagedown-bootstrap-rails"
gem "bootstrap-sass", "~> 3.3.1"
gem "font-awesome-rails"


group :development do
  gem "better_errors"
  gem "sextant"
end

group :development, :test do
  gem "pry-rails" # Debugger replacements.  Use "binding.pry" where you would use "debugger"
  gem "activerecord-nulldb-adapter"
  gem "database_cleaner"
  gem "email_spec"

  gem "debugger2"
  gem "rspec-rails"
  gem "capybara"
  gem "factory_girl_rails", :require => false
  gem "faker"

  gem "guard-bundler"
  gem "guard-coffeescript"
  gem "guard-rails"
  gem "guard-rspec"
  gem "guard-spork"
  gem "growl"

  gem "spork-rails", :github => "sporkrb/spork-rails"

  gem "ruby-prof"
end

group :test do
  gem "vcr"
  gem "webmock"
end
