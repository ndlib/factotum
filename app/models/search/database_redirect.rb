class Search::DatabaseRedirect < Search::Redirect
  def accept_params
    [:q]
  end

  def query_params
    {
      query: params[:q],
      stats_search_type: "dbf_search"
    }
  end

  def path
    '/ddw/public/statistics/stats.cgi'
  end

  def redirect_name
    :library
  end
end
