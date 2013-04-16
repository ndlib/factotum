class HelpRequestMailer < ActionMailer::Base
  default :from => "help-request@nd.edu"

  def send_for_help(help_request)
    case help_request.code
    when "arch"
      architecture_help_request(help_request)
    end
  end

  def architecture_help_request(help_request)
    @request = help_request

    mail(:to => @request.service_point.primary_email, 
         :subject => "Architecture Help Request",
         :template_name => "architecture_help_request")
  end

end
