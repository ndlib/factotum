class Search::ArticleRedirect < Search::Redirect
  def accept_params
    [:q, :subject]
  end

  def subject
    params[:subject] || "genmul"
  end

  def query_params
    if search?
      {
        query: params[:q],
        subject: subject,
        interface: "basic",
        search_type: "subject",
        stats_search_type: "article_search"
      }
    else
      {
        interface: 'advanced',
        subject: subject,
        search_type: 'subject'
      }
    end
  end

  def path
    if search?
      '/ddw/public/statistics/stats.cgi'
    else
      '/eresources/quicksearch/quicksearch.cgi'
    end
  end

  def redirect_name
    :library
  end
end
