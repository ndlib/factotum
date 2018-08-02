class QuicksearchController < ApplicationController
  class UnknownSubject < StandardError
  end

  def subject
    target = params[:target]
    redirect_to xerxes_url(target)
  rescue UnknownSubject => exception
    Raven.capture_exception(exception)
    ExceptionNotifier.notify_exception(exception, { env: request.env })
    redirect_to xerxes_url(params[:target])
  end

  private
    def xerxes_url(target)
      target = target.to_s
      if (target =~ /^\/quicksearch/).nil?
        target = "/quicksearch/"
      end
      "http://#{Rails.configuration.xerxes_domain}#{target}"
    end
end
