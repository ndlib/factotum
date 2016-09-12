source 'http://rubygems.org'

group :application do
  gem 'rails', '~> 3.2.17'

  gem 'active_attr'
  gem 'american_date'
  gem 'devise'
  gem 'devise_cas_authenticatable'
  gem 'exception_notification'
  gem 'google_drive'
  gem 'hesburgh_assets', :git => 'git@git.library.nd.edu:assets'
  gem "hesburgh_infrastructure", git: 'git@git.library.nd.edu:hesburgh_infrastructure'
  gem 'jquery-rails', '~> 2.1.4'
  gem 'json'
  gem 'kaminari'
  gem 'mechanize'
  gem 'money'
  gem 'mysql2', '~> 0.3.17'
  gem 'net-ldap'
  gem 'paperclip'
  gem "rb-readline"
  gem 'recaptcha', :require => 'recaptcha/rails'
  gem 'redcarpet'
  gem 'simple_form'
  gem 'worldcat'
  gem 'therubyracer'

  gem 'backgroundrb-rails3', :require => 'backgroundrb'

  gem "twitter-bootstrap-rails"
  gem 'jquery-datatables-rails'

  # for static pages
  gem 'high_voltage', '~> 2.2.1'
end

gem "whenever", :require => false

gem 'rake', '>= 10.0.3'

gem 'newrelic_rpm'

# For Errbit
gem "airbrake"

gem "capistrano", "2.15.5"

# Gems used only for assets
group :assets do
  gem 'sass-rails', '  ~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem "pagedown-bootstrap-rails", "~> 1.1.0"
end


group :development do
  gem "better_errors"
  gem 'sextant'
end

group :development, :test do
  gem 'pry-rails' # Debugger replacements.  Use "binding.pry" where you would use "debugger"
  gem 'activerecord-nulldb-adapter'
  gem 'database_cleaner'
  gem 'email_spec'

  gem "debugger2"
  gem "rspec-rails"
  gem "capybara"
  gem "factory_girl_rails", :require => false
  gem "faker"

  gem "guard", '~> 1.8'
  gem "guard-bundler"
  gem "guard-coffeescript"
  gem "guard-rails"
  gem "guard-rspec"
  gem "guard-spork"
  gem "growl"

  gem 'ruby-prof'
end

group :test do
  gem 'vcr'
  gem 'webmock'
end
