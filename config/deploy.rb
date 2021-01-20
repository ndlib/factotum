# config valid for current version and patch releases of Capistrano
lock "~> 3.14.1"

set :application, "factotum"
set :repo_url, "git@github.com:ndlib/factotum.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
set :branch, ENV['SCM_BRANCH'] if ENV['SCM_BRANCH']

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"
set :deploy_to, "/home/app/factotum"

set :ssh_options, {
  verify_host_key: :never,
}


# Default value for keep_releases is 5
set :keep_releases, 5

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"
set :linked_files, fetch(:linked_files, []).push("config/secrets.yml")

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"
set :linked_dirs, fetch(:linked_dirs, []).push("bin", "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system")
# append :linked_dirs, "bin", "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "solr"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }
set :default_env, { path: "/opt/ruby/current/bin:$PATH" }

# set :whenever_identifier, -> { "#{fetch(:application)}_#{fetch(:stage)}" }

namespace :deploy do

  desc "Restart application"
  task :restart do
    on roles(:web), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      execute :touch, release_path.join("tmp/restart.txt")
    end
  end

  after :published, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, "cache:clear"
      # end
    end
  end
end

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
