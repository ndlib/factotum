require 'rubygems'
require 'spork'
#uncomment the following line to use spork with the debugger
#require 'spork/ext/ruby-debug'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

end

Spork.each_run do
  # This code will be run each time you run your specs.

end

# --- Instructions ---
# Sort the contents of this file into a Spork.prefork and a Spork.each_run
# block.
#
# The Spork.prefork block is run only once when the spork server is started.
# You typically want to place most of your (slow) initializer code in here, in
# particular, require'ing any 3rd-party gems that you don't normally modify
# during development.
#
# The Spork.each_run block is run each time you run your specs.  In case you
# need to load files that tend to change during development, require them here.
# With Rails, your application modules are loaded automatically, so sometimes
# this block can remain empty.
#
# Note: You can modify files loaded *from* the Spork.each_run block without
# restarting the spork server.  However, this file itself will not be reloaded,
# so if you change any of the code inside the each_run block, you still need to
# restart the server.  In general, if you have non-trivial code in this file,
# it's advisable to move it into a separate file so you can easily edit it
# without restarting spork.  (For example, with RSpec, you could move
# non-trivial code into a file spec/support/my_helper.rb, making sure that the
# spec/support/* files are require'd from inside the each_run block.)
#
# Any code that is left outside the two blocks will be run during preforking
# *and* during each_run -- that's probably not what you want.
#
# These instructions should self-destruct in 10 seconds.  If they don't, feel
# free to delete them.




# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'email_spec'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.include(EmailSpec::Helpers)
  config.include(EmailSpec::Matchers)
  # == Mock Framework
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
  config.filter_run_excluding :connects_to_xerxes => true
  #config.filter_run :focus => true

  # RSpec automatically cleans stuff out of backtraces;
  # sometimes this is annoying when trying to debug something e.g. a gem
  # config.backtrace_clean_patterns = [
  #   /\/lib\d*\/ruby\//,
  #   /org\/jruby\//,
  #   /bin\//,
  #   /gems/,
  #   /spec\/spec_helper\.rb/,
  #   /lib\/rspec\/(core|expectations|matchers|mocks)/,
  #   /vendor\//,
  #   /lib\/rspec\/rails/
  # ]

  config.include GlobalStubs

  config.before(:each) do
    add_global_stubs
  end

  config.include Devise::TestHelpers, :type => :controller
  config.extend ControllerMacros, :type => :controller
end

def refworks_test_user_row
  '<TR CLASS="SF"><TD CLASS="SF"><INPUT TYPE="CHECKBOX" NAME="Selected" Value="7369" ONCLICK="if (!this.checked) {document.DeleteForm.SelectAll.checked = false;}"></TD></TD><TD CLASS="SF">&nbsp;7369</TD><TD CLASS="SF">&nbsp;<a href="javascript:showUserInfo(7369)">2</a></TD><TD CLASS="SF">&nbsp;ndrefworkstest</TD><TD CLASS="SF">&nbsp;Refworks Test</TD><TD CLASS="SF">&nbsp;<a href="mailto:jkennel@nd.edu">jkennel@nd.edu</a></TD><TD CLASS="SF">&nbsp;Mon Sep 19 17:21:41 EDT 2011</TD><TD CLASS="SF">&nbsp;Mon Sep 19 17:19:22 EDT 2011</TD><TD CLASS="SF">&nbsp;0</TD><TD class="SF">&nbsp;Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:6.0.2) Gecko/20100101 Firefox/6.0.2|IP=129.74.226.127Lang=en-us,en;q=0.5</TD></TR>'
end

def refworks_test_user_attributes
  {
    :refworks_id => "7369", 
    :number_of_logins => "2", 
    :login => 'ndrefworkstest', 
    :name => "Refworks Test", 
    :email => "jkennel@nd.edu", 
    :last_login_date => "Mon Sep 19 17:21:41 EDT 2011", 
    :refworks_creation_date => "Mon Sep 19 17:19:22 EDT 2011", 
    :last_ref_id => "0", 
    :browser_info => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:6.0.2) Gecko/20100101 Firefox/6.0.2|IP=129.74.226.127Lang=en-us,en;q=0.5"
  }
end

def refworks_bad_user_row
  '<TR CLASS="SF"><TD CLASS="SF"><TD CLASS="SF">&nbsp;ndrefworkstest</TD><TD CLASS="SF">&nbsp;Refworks Test</TD><TD CLASS="SF">&nbsp;<a href="mailto:jkennel@nd.edu">jkennel@nd.edu</a></TD><TD CLASS="SF">&nbsp;Mon Sep 19 17:21:41 EDT 2011</TD><TD CLASS="SF">&nbsp;Mon Sep 19 17:19:22 EDT 2011</TD><TD CLASS="SF">&nbsp;0</TD><TD class="SF">&nbsp;Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:6.0.2) Gecko/20100101 Firefox/6.0.2|IP=129.74.226.127Lang=en-us,en;q=0.5</TD></TR>'
end
