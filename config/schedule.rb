# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

if environment == 'pre_production'
  set :bundler, "/shared/ruby_pprd/ruby/1.9.3/bin/bundle"
elsif environment == 'production'
  set :bundler, "/shared/ruby_prod/ruby/1.9.3/bin/bundle"
else
  set :bundler, "bundle"
end


if environment == 'pre_production' || environment == 'production'
  set :rails_exec, 'vendor/bundle/bin/rails'
else
  set :rails_exec, 'rails'
end


job_type :runner, "cd :path && :bundler exec :rails_exec runner -e :environment ':task' :output"


# Learn more: http://github.com/javan/whenever

# first of the month every may, auguest, and november.
every '0 0 1 4,8,11 *' do
  runner "HoursNotificationMailer.send_all_notifictions"
end

every '0 0 28 4 *' do
  runner "HoursNotificationMailer.send_all_notifictions"
end

every '5 0 * * *' do
  runner "SSIFileProcessor.generate_and_copy_files"
end

every '0 4 * * *' do
  runner "RefworksUser.scheduled_user_cache"
end



 #cd /shared/ruby_pprd/data/app_home/factotum/releases/20130408132829/ && /shared/ruby_pprd/ruby/1.9.3/bin/bundle exec
 #vendor/bundle/bin/rails runner -e pre_production 'HoursNotificationMailer.send_all_notifictions'
