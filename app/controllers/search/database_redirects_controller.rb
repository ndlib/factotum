class Search::DatabaseRedirectsController < ApplicationController
  def index
    @redirect = Search::DatabaseRedirect.new(params)
    redirect_to @redirect.url
  end
end
