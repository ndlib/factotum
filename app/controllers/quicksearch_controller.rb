class QuicksearchController < ApplicationController
  def subject
    target = params[:target]
    terms = DDWTerm.quicksearch_terms
    matching_term = terms.detect{|t| t.xerxes_path == target}
    if matching_term.present?
      redirect_to matching_term.articles_url
    else
      raise "Quicksearch redirect could not find matching subject for #{target}"
    end
  rescue Exception => exception
    ExceptionNotifier::Notifier.exception_notification(request.env, exception).deliver
    redirect_to xerxes_url(params[:target])
  end

  private
    def xerxes_url(target)
      target = target.to_s
      if (target =~ /^\/quicksearch/).nil?
        target = "/quicksearch/"
      end
      "http://#{Rails.configuration.xerxes_domain}" + target
    end
end
