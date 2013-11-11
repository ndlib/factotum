class Search::ArticleRedirectsController < ApplicationController
  def index
    @redirect = Search::ArticleRedirect.new(params)
    redirect_to @redirect.url
  end
end
