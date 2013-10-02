class PurchaseRequestsMailer < ActionMailer::Base

  def submission(request)
    @request = request
    mail to: request.subject_email, from: request.requester_email, subject: "Recommendation for Purchase: #{request.title}"
  end

  def confirmation(request)
    @request = request
    mail to: request.requester_email, from: request.requester_email, subject: "Copy of your Purchase Recommendation"
  end

end
