class Search::EjournalRedirectsController < ApplicationController
  def index
    @redirect = Search::EjournalRedirect.new(params)
    redirect_to @redirect.url
  end
end
