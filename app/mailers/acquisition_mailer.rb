class AcquisitionMailer < ActionMailer::Base
  helper :just_say_yes_order, :monographic_order
  default :from => "\"Monographic Acquisitions\" <monoacqorder@nd.edu>"

  def monographic_submission(order)
    @order = order
    if @order.acquisition_order_attachments.present?
      @order.acquisition_order_attachments.each do |attachment|
        add_paperclip_attachment(attachment)
      end
    end
    mail :to => monographic_submission_recipient(), :from => order.selector.email, :subject => "Order Request: #{order.title}"
  end

  def monographic_confirmation(order, user)
    @order = order
    if @order.acquisition_order_attachments.present?
      @order.acquisition_order_attachments.each do |attachment|
        add_paperclip_attachment(attachment)
      end
    end
    mail :to => user.email, :subject => "Order Request Confirmation: #{order.title}"
  end

  def just_say_yes_submission(order)
    @order = order
    if @order.acquisition_order_attachments.present?
      @order.acquisition_order_attachments.each do |attachment|
        add_paperclip_attachment(attachment)
      end
    end
    mail :to => just_say_yes_submission_recipients(), :from => order.selector.email, :subject => "Just Say Yes Form: #{order.title}"
  end

  def just_say_yes_confirmation(order, user)
    @order = order
    if @order.acquisition_order_attachments.present?
      @order.acquisition_order_attachments.each do |attachment|
        add_paperclip_attachment(attachment)
      end
    end
    mail :to => user.email, :from => just_say_yes_from, :reply_to => just_say_yes_reply_to, :subject => "Just Say Yes Confirmation: #{order.title}"
  end

  private
    def just_say_yes_from()
      "\"Just Say Yes!\" <justsayyes@library.nd.edu>"
    end

    def just_say_yes_reply_to()
      "jmorale9@nd.edu"
    end

    def monographic_from()
      "\"Monographic Acquisitions\" <monoacqorder@nd.edu>"
    end

    def monographic_submission_recipient
      ["monoacqorder@nd.edu","illiad@nd.edu"]
    end

    def just_say_yes_submission_recipients
      ["jmorale9@nd.edu", "Laura.A.Sill.4@nd.edu"]
    end

    def add_paperclip_attachment(paperclip_attachment)
      if paperclip_attachment.present?
        desired_content_type = paperclip_attachment.attachment_content_type
        if desired_content_type =~ /^text\/(plain|html)$/
          desired_content_type = "application/octet-stream"
        end
        attachments[paperclip_attachment.attachment_file_name] = {
          :mime_type => desired_content_type,
          :content => File.read(paperclip_attachment.attachment.path)
        }
      end
    end
end
