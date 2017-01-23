class Search::PrimoRedirectsController < ApplicationController
  def index
    @redirect = Search::PrimoDeepLinkRedirect.new(params)
    redirect_to @redirect.url
  end

  def login
    login = Search::PrimoLoginLink.new(params[:vid])
    redirect_to login.url
  end
end
