# Set the name of the application.  This is used to determine directory paths and domains
set :application, 'factotum'

begin
  require 'airbrake/capistrano'
  require 'new_relic/recipes'

  after "deploy:update", "newrelic:notice_deployment"
rescue LoadError
end

#############################################################
#  Application settings
#############################################################

# Defaults are set in lib/hesburgh_infrastructure/capistrano/common.rb

# Repository defaults to "git@git.library.nd.edu:#{application}"
# set :repository, "git@git.library.nd.edu:myrepository"

# Define symlinks for files or directories that need to persist between deploys.
# /log, /vendor/bundle, and /config/database.yml are automatically symlinked
set :application_symlinks, [
  "/config/initializers/refworks_admin.rb"
]

#############################################################
#  Environment settings
#############################################################

# Defaults are set in lib/hesburgh_infrastructure/capistrano/environments.rb

set :scm, 'git'
set :scm_command, '/usr/bin/git'

set :user, 'app'
set :ruby_bin, "/opt/ruby/current/bin"

desc "Setup for the Pre-Production environment"
task :pre_production do
  # Customize pre_production configuration
  set :deploy_to, "/home/app/#{application}"
  set :domain, "factotumpprd-vm.library.nd.edu"
end

desc "Setup for the production environment"
task :production do
  # Customize production configuration
  set :deploy_to, "/home/app/#{application}"
  set :domain, "factotumprod-vm.library.nd.edu"
end

#############################################################
#  Additional callbacks and tasks
#############################################################

# Define any addional tasks or callbacks here
require 'deploy/whenever'
