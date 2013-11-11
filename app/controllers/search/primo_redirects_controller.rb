class Search::PrimoRedirectsController < ApplicationController
  def index
    @redirect = Search::PrimoRedirect.new(params)
    redirect_to @redirect.url
  end
end
