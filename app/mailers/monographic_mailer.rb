class MonographicMailer < ActionMailer::Base
  default :from => "monoacqorder@library.nd.edu"
  
  def form_submission(order)
    @order = order
    if @order.attachment.present?
      attachments[@order.attachment.original_filename] = {
        :mime_type => @order.attachment.content_type,
        :content => File.read(@order.attachment.path)
      }
    end
    mail :to => self.order_email_recipient, :subject => "Monographic Order Form: #{order.title}"
  end
  
  def form_confirmation(order)
    @order = order
    if @order.attachment.present?
      attachments[@order.attachment.original_filename] = {
        :mime_type => @order.attachment.content_type,
        :content => File.read(@order.attachment.path)
      }
    end
    mail :to => order.creator.email, :subject => "Monographic Order Form Confirmation: #{order.title}"
  end
  
  protected
    def order_email_recipient
      if Rails.env == "production"
        "monoacqorder@library.nd.edu"
      else
        "jkennel@nd.edu"
      end
    end
end