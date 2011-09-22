#############################################################
#  Application
#############################################################

set :application, 'libgolem'

#############################################################
#  Settings
#############################################################

default_run_options[:pty] = true
set :use_sudo, false

#############################################################
#  Source Control
#############################################################

set :scm, 'git'
set :repository, "git@git.library.nd.edu:libgolem"
# Set an environment variable to deploy from a branch other than master
# branch=beta cap staging deploy
set(:branch) {
  name = ENV['branch'] ? ENV['branch'] : 'master'
  puts "Deploying to branch #{name}"
  name
}
set :scm_verbose, true # Enables support for older versions of git. http://help.github.com/capistrano/
set :deploy_via, :remote_cache

#############################################################
#  Environments
#############################################################

desc "Setup for the Pre-Production environment"
task :pre_production do
  set :rails_env,     'pre_production'
  set :scm_command,   '/usr/bin/git'
  set :rake,          '/shared/ruby_pprd/ruby/bin/rake'
  set :bundle,        '/shared/ruby_pprd/ruby/bin/bundle'
  set :deploy_to,     "/shared/ruby_pprd/data/app_home/#{application}"
  set :user,          'rbpprd'
  set :domain,        'rpprd.library.nd.edu'
  set :site_url,      'libgolempprd.library.nd.edu'

  server "#{user}@#{domain}", :app, :web, :db, :primary => true
end

#############################################################
#  Passenger
#############################################################

desc "Restart Application"
task :restart_passenger do
  run "touch #{current_path}/tmp/restart.txt"
end

#############################################################
#  Deploy
#############################################################

namespace :deploy do
  desc "Start application in Passenger"
  task :start, :roles => :app do
    restart_passenger
  end

  desc "Restart application in Passenger"
  task :restart, :roles => :app do
    restart_passenger
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Symlink shared configs and folders on each release."
  task :symlink_shared, :roles => :app do
    run "ln -nfs #{shared_path}/log #{release_path}/log"
    run "ln -nfs #{shared_path}/bundle/config #{release_path}/.bundle/config"
    run "ln -nfs #{shared_path}/vendor/bundle #{release_path}/vendor/bundle"
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    run "ln -nfs #{shared_path}/config/initializers/refworks_admin.rb #{release_path}/config/initializers/refworks_admin.rb"
  end

  desc "Spool up Passenger spawner to keep user experience speedy"
  task :kickstart, :roles => :app do
    run "curl -I http://#{site_url}"
  end

  namespace :assets do
    desc "Run the asset clean rake task."
    task :clean, :roles => :app do
      run "cd #{release_path} && #{bundle} exec #{rake} RAILS_ENV=#{rails_env} RAILS_GROUPS=assets assets:clean"
    end

    desc "Run the asset precompilation rake task."
    task :precompile, :roles => :app do
      run "cd #{release_path} && #{bundle} exec #{rake} RAILS_ENV=#{rails_env} RAILS_GROUPS=assets assets:precompile"
    end
  end

end

namespace :bundle do
  desc "Install gems in Gemfile"
  task :install, :roles => :app do
    run "#{bundle} install --gemfile='#{release_path}/Gemfile'"
  end
end

after 'deploy:update_code', 'deploy:symlink_shared', 'bundle:install', 'deploy:migrate'
after 'deploy', 'deploy:cleanup', 'deploy:restart', 'deploy:kickstart'
