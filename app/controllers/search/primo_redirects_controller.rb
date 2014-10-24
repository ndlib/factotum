class Search::PrimoRedirectsController < ApplicationController
  def index
    @redirect = Search::PrimoDeepLinkRedirect.new(params)
    redirect_to @redirect.url
  end
end
