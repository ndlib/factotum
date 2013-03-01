class MapsRequestMailer < ActionMailer::Base
  default :from => "maps-request@nd.edu"

  def maps_request_notify(request)
    @requester = request.user
    @request = request

    mail(:to => 'rfox2@localhost', :subject => "Maps Printing Request")
  end

end
