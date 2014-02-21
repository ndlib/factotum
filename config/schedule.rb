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

job_type :runner, "cd :path && bundle exec rails runner -e :environment ':task' :output"
job_type :rake,   "cd :path && :environment_variable=:environment bundle exec rake :task --silent :output"

# Learn more: http://github.com/javan/whenever

# first of the month every April, August, and November.
every '0 0 1 4,8,11 *' do
  runner "HoursNotificationMailer.send_all_notifictions"
end

every '5 0 * * *' do
  runner "SSIFileProcessor.generate_and_copy_files"
end

every '0 4 * * *' do
  runner "RefworksUser.scheduled_user_cache"
end

case environment
when 'production'
  every '0 4 * * 6' do
    rake "ezproxy:clear_unused_hosts"
  end
end
