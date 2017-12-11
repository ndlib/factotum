class AcquisitionMailer < ActionMailer::Base
  helper :just_say_yes_order, :monographic_order
  default :from => "\"Monographic Acquisitions\" <monoacqorder@nd.edu>"

  def monographic_submission(order)
    @order = order
    add_paperclip_attachment(@order.attachment)
    mail :to => monographic_submission_recipient(), :from => order.selector.email, :subject => "Order Request: #{order.title}"
  end

  def monographic_confirmation(order, user)
    @order = order
    add_paperclip_attachment(@order.attachment)
    mail :to => user.email, :subject => "Order Request Confirmation: #{order.title}"
  end

  def just_say_yes_submission(order)
    @order = order
    add_paperclip_attachment(@order.attachment)
    mail :to => just_say_yes_submission_recipients(), :from => order.selector.email, :subject => "Just Say Yes Form: #{order.title}"
  end

  def just_say_yes_confirmation(order, user)
    @order = order
    add_paperclip_attachment(@order.attachment)
    mail :to => user.email, :from => just_say_yes_from, :reply_to => just_say_yes_reply_to, :subject => "Just Say Yes Confirmation: #{order.title}"
  end

  private
    def just_say_yes_from()
      "\"Just Say Yes!\" <justsayyes@library.nd.edu>"
    end

    def just_say_yes_reply_to()
      "Langhurst.1@nd.edu"
    end

    def monographic_from()
      "\"Monographic Acquisitions\" <monoacqorder@nd.edu>"
    end

    def monographic_submission_recipient
      "monoacqorder@nd.edu"
    end

    def just_say_yes_submission_recipients
      ["langhurst.1@nd.edu", "Laura.A.Sill.4@nd.edu", "pnichola@nd.edu","Mary.C.McKeown.8@nd.edu"]
    end

    def add_paperclip_attachment(paperclip_attachment)
      if paperclip_attachment.present?
        desired_content_type = paperclip_attachment.content_type
        if desired_content_type =~ /^text\/(plain|html)$/
          desired_content_type = "application/octet-stream"
        end
        attachments[paperclip_attachment.original_filename] = {
          :mime_type => desired_content_type,
          :content => File.read(paperclip_attachment.path)
        }
      end
    end
end
