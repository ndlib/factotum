class HoursNotificationMailer < ActionMailer::Base

  def send_all_notifictions
    services = Availability::ServicePoint.all
    services.each do | sp | 
      if sp.notification_emails.present?
        self.class.send_check_hours_notification(sp).deliver
      end
    end
  end


  def send_check_hours_notification(service)     
    @service_point = service
    mail :to => service.notification_emails, :subject => "Verify Hours are still correct for #{service.name}"
  end

end