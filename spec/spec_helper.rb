require 'rubygems'
require 'spork'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.
  ENV["RAILS_ENV"] ||= 'test'

  # Trap methods to prevent model caching: https://github.com/sporkrb/spork/wiki/Spork.trap_method-Jujitsu
  require "rails/application"
  Spork.trap_method(Rails::Application::RoutesReloader, :reload!)

  # factory_girl_rails was causing some model caching: http://stackoverflow.com/questions/4963733/spork-prefork-is-loading-app-models
  require 'factory_girl_rails'
  Spork.trap_class_method(FactoryGirl, :find_definitions)

  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'email_spec'
  require 'nulldb_rspec'
  # require 'rspec/autorun'

  # Requires supporting ruby files with custom matchers and macros, etc, in
  # spec/support/ and its subdirectories. Files matching `spec/**/*_spec.rb` are
  # run as spec files by default. This means that files in spec/support that end
  # in _spec.rb will both be required and run as specs, causing the specs to be
  # run twice. It is recommended that you do not name files matching this glob to
  # end with _spec.rb. You can configure this pattern with with the --pattern
  # option on the command line or in ~/.rspec, .rspec or `.rspec-local`.
  Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

  VCRSetup.configure_vcr

  RSpec.configure do |config|
    config.include(EmailSpec::Helpers)
    config.include(EmailSpec::Matchers)
    # ## Mock Framework
    #
    # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
    #
    # config.mock_with :mocha
    # config.mock_with :flexmock
    # config.mock_with :rr
    config.mock_with :rspec

    # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
    config.fixture_path = "#{::Rails.root}/spec/fixtures"

    # If you're not using ActiveRecord, or you'd prefer not to run each of your
    # examples within a transaction, remove the following line or assign false
    # instead of true.
    config.use_transactional_fixtures = true

    config.filter_run_excluding :connects_to_refworks => true
    config.filter_run_excluding :connects_to_library => true
    #config.filter_run :focus => true

    # If true, the base class of anonymous controllers will be inferred
    # automatically. This will be the default behavior in future versions of
    # rspec-rails.
    config.infer_base_class_for_anonymous_controllers = false

    [:controller, :view, :helper].each do |type_key|
      config.include Devise::Test::ControllerHelpers, type: type_key
      config.include LoginMacros, type: type_key
    end

    config.include Warden::Test::Helpers, type: :feature
    config.include LoginFeatureMacros, type: :feature

    config.include RefworksSpecHelper
    config.include PrecompileMacros

    config.include GlobalStubs
    config.before(:each) do
      add_global_stubs
    end
    # Run specs in random order to surface order dependencies. If you find an
    # order dependency and want to debug it, you can fix the order by providing
    # the seed, which is printed after each run.
    #     --seed 1234
    config.order = "random"

    # rspec-rails 3 will no longer automatically infer an example group's spec type
    # from the file location. You can explicitly opt-in to the feature using this
    # config option.
    # To explicitly tag specs without using automatic inference, set the `:type`
    # metadata manually:
    #
    #     describe ThingsController, :type => :controller do
    #       # Equivalent to being in spec/controllers
    #     end
    config.infer_spec_type_from_file_location!
  end
end

Spork.each_run do
  # This code will be run each time you run your specs.

  FactoryGirl.reload
  Rails.application.reload_routes!

end
