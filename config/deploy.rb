require 'lib/deploy/passenger'
# List all tasks from RAILS_ROOT using: cap -T

# NOTE: The SCM command expects to be at the same path on both the local and
# remote machines. The default git path is: '/shared/git/bin/git'.

#############################################################
#  Configuration
#############################################################
set :application, 'factotum'
set :repository,  'git@git.library.nd.edu:factotum'
ssh_options[:keys] = %w(/shared/jenkins/.ssh/id_dsa)

set :symlink_targets, [
  { '/bundle/config' => '/.bundle/config' },
  '/log',
  '/vendor/bundle',
  '/config/database.yml',
  '/config/initializers/refworks_admin.rb'
]

#############################################################
#  Environments
#############################################################

desc "Setup for the Pre-Production environment"
task :pre_production do
  set :rails_env, 'pre_production'
  set :deploy_to, "/shared/ruby_pprd/data/app_home/#{application}"
  set :ruby_bin,  '/shared/ruby_prod/ruby/bin'

  set :user,      'rbpprd'
  set :domain,    'factotumpprd.library.nd.edu'

  # Set the default path to make a custom version of python available for libv8
  default_environment['PATH'] = "/shared/python/bin/:#{ruby_bin}:$PATH"
  server "#{user}@#{domain}", :app, :web, :db, :primary => true
end

desc "Setup for the Production environment"
task :production do
  set :rails_env, 'production'
  set :deploy_to, "/shared/ruby_prod/data/app_home/#{application}"
  set :ruby_bin,  '/shared/ruby_prod/ruby/bin'

  set :user,      'rbprod'
  set :domain,    'factotum.library.nd.edu'

  # Set the default path to make a custom version of python available for libv8
  default_environment['PATH'] = "/shared/python/bin/:#{ruby_bin}:$PATH"
  server "#{user}@#{domain}", :app, :web, :db, :primary => true
end
