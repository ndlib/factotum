namespace :ezproxy do
  desc "Clear out hosts that have not been used in 30 days"
  task :clear_unused_hosts => :environment do
    Airbrake.configuration.rescue_rake_exceptions = true
    require 'rubygems'
    require 'mechanize'

    agent = Mechanize.new
    page = agent.get('https://login.proxy.library.nd.edu:443/login?user=admin&pass=DR0WSS8P&url=https://login.proxy.library.nd.edu:443/status')

    # select the form and radio button for removing unused hosts
    select_form = page.forms[1]
    select_form.radiobutton_with(:value => 'm2').check

    # click the process button
    page = agent.submit(select_form)

    # go to the restart page
    page = agent.get('https://login.proxy.library.nd.edu:443/login?user=admin&pass=DR0WSS8P&url=https://login.proxy.library.nd.edu:443/restart')

    # type restart into box
    restart = page.forms.first
    restart["confirm"] = 'RESTART'

    # click here button
    page = agent.submit(restart)
  end
end
