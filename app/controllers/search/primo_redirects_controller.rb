class Search::PrimoRedirectsController < ApplicationController
  def index
    @redirect = redirect_class.new(params)
    redirect_to @redirect.url
  end

  private

  def current_environment
    Rails.env
  end

  def redirect_class
    if current_environment == "production"
      search_class = Search::PrimoRedirect
    else
      search_class = Search::PrimoDeepLinkRedirect
    end
  end
end
