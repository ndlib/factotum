Factotum::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = false

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Action mailer settings
  config.action_mailer.delivery_method = :test

  default_url_options = { host: "localhost", port: 3003 }
  config.action_mailer.default_url_options = default_url_options
  Rails.application.routes.default_url_options = default_url_options

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true

  config.force_ssl = true

  # Debugger.settings[:autoeval] = true
  # Debugger.settings[:autolist] = 1
  # Debugger.settings[:reload_source_on_change] = true
  # Debugger.start_remote

  config.xerxes_domain = "xerxes.local"

  # Custom configuration
  config.base_url = "http://localhost:3003"
  config.library_url = "http://librarypprd.nd.edu"
  # config.cas_base = 'https://login-test.cc.nd.edu/cas'
  config.maps_mail_target = 'rfox2@localhost'
  config.api_url = "http://localhost:3005"
end
