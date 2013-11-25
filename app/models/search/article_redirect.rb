class Search::ArticleRedirect < Search::Redirect
  def accept_params
    [:q, :subject]
  end

  def query_params
    if search?
      {
        query: params[:q],
        subject: params[:subject] || "genmul",
        interface: "basic",
        search_type: "subject",
        stats_search_type: "article_search"
      }
    else
      {}
    end
  end

  def path
    if search?
      '/ddw/public/statistics/stats.cgi'
    else
      '/quicksearch/databases/subject/general-multidisciplinary'
    end
  end

  def redirect_name
    if search?
      :library
    else
      :xerxes
    end
  end
end
