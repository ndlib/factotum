class QuicksearchController < ApplicationController
  class UnknownSubject < StandardError
  end

  def subject
    target = params[:target]
    if target =~ /^#{Regexp.escape(DDWTerm.xerxes_subject_path)}/
      terms = DDWTerm.quicksearch_terms
      matching_term = terms.detect{|t| t.xerxes_path == target}
      if matching_term.present?
        redirect_to matching_term.articles_url
      else
        raise UnknownSubject, "Unknown subject for #{target}"
      end
    else
      redirect_to xerxes_url(target)
    end
  rescue UnknownSubject => exception
    ExceptionNotifier::Notifier.exception_notification(request.env, exception).deliver_now
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
