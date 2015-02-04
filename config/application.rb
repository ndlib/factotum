require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require *Rails.groups(:assets => %w(development test))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end

module Factotum
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Custom directories with classes and modules you want to be autoloadable.
    # config.autoload_paths += %W(#{config.root}/extras)
    config.autoload_paths += %W(#{config.root}/lib)
    config.autoload_paths += Dir["#{config.root}/lib/**/"]
    config.autoload_paths += Dir[Rails.root.join('app', 'models', 'directory', '{**}')]

    # Only load the plugins named here, in the order given (default is alphabetical).
    # :all can be used as a placeholder for all plugins not explicitly named.
    # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

    # Activate observers that should always be running.
    # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'
    config.time_zone = 'Eastern Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    # Google Drive API access
    # ENV.update YAML.load(File.read(File.expand_path('../google.yml', __FILE__)))

    # Precompile additional assets (application.js, application.css, and all non-JS/CSS are already added)
    # config.assets.precompile += %w( search.js )
    config.assets.precompile += %w(
      hours_builder.js
      hours_builder.css
      print/hours_print_page.css
      print/directory_print.css
    )

    config.assets.initialize_on_precompile = false

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.form_builder :simple_form
    end

    config.middleware.use ExceptionNotifier,
      :email_prefix => "[Factotum #{Rails.env}] ",
      :sender_address => %{"Factotum Notifier" <factotum@nd.edu>},
      :exception_recipients => %w{jkennel@nd.edu jhartzler@nd.edu rfox2@nd.edu dwolfe2@nd.edu}

    # LDAP parameters
    config.ldap_host = 'directory.nd.edu'
    config.ldap_port = 636
    config.ldap_base = 'o=University of Notre Dame,st=Indiana,c=US'
    config.ldap_service_dn = 'ndGuid=nd.edu.nddk4kq4,ou=objects,o=University of Notre Dame,st=Indiana,c=US'
    config.ldap_service_password = 'tNTZT6BLVnIC37EHzmNbzJDAD75gpgC6'
    config.ldap_attrs = [ 'uid', 'givenname', 'sn', 'ndvanityname', 'nddepartment' ]

    config.library_ssi_user = "libweb"
    config.library_ssi_server = "david.library.nd.edu"
  end
end
