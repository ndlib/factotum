class QuicksearchController < ApplicationController
  def subject
    target = params[:target]
    terms = DDWTerm.quicksearch_terms
    matching_term = terms.detect{|t| t.xerxes_path == target}
    if matching_term.present?
      redirect_to matching_term.articles_url
    else
      term_paths = terms.collect{|t| t.xerxes_path}
      render :text => target + ": " + term_paths.inspect
    end
  end
end
