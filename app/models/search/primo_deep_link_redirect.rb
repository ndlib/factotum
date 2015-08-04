class Search::PrimoDeepLinkRedirect < Search::Redirect
  DEFAULT_SEARCH_SCOPES = {
    'NDU' => {
      'onesearch' => 'malc_blended',
      'nd_campus' => 'nd_campus',
      'malc' => 'malc',
      'ebooks' => 'ebook'
    },
    'BCI' => {
      'onesearch' => 'OneSearch',
      'bci' => 'BCI',
      'malc' => 'default_scope'
    },
    'HCC' => {
      'hcc' => 'HCC',
      'malc' => 'default_scope'
    },
    'SMC' => {
      'onesearch' => 'onesearch',
      'smc' => 'SMC',
      'malc' => 'malc'
    }
  }

  def accept_params
    [:q, :institution, :vid, :tab, :search_scope, :mode]
  end

  def query_param
    if search?
      "any,contains,#{params[:q]}"
    else
      ""
    end
  end

  def institution
    params[:institution]
  end

  def vid
    params[:vid] || institution
  end

  def tab
    params[:tab]
  end

  def mode
    if params[:mode] == 'Advanced'
      params[:mode]
    else
      'Basic'
    end
  end

  def search_scope
    params[:search_scope] || default_search_scope
  end

  def default_search_scope
    if institution && tab && DEFAULT_SEARCH_SCOPES[institution] && DEFAULT_SEARCH_SCOPES[institution][tab]
      DEFAULT_SEARCH_SCOPES[institution][tab]
    end
  end

  def query_params
    # If there's no query term we only need a very basic set of parameters
    params_hash = {
      institution: institution,
      vid: vid,
      tab: tab,
      mode: mode,
      query: query_param,
      search_scope: search_scope,
      indx: 1,
      bulkSize: 10,
      highlight: 'true',
      dym: 'true',
      onCampus: 'false',
      pcAvailabiltyMode: 'true',
    }
    if mode == 'Advanced'
      # For some reason the advanced search will not prefill the query in the search box unless the "vl(freeText0)" GET parameter is specified
      params_hash['vl(freeText0)'] = params[:q]
    end
    params_hash
  end

  def query_string
    params_hash = query_params
    query = "?#{params_hash.to_query}"
    if params_hash[:highlight]
      # To enable highlighting, multiple display fields need to be defined as per http://exlibrisgroup.org/display/PrimoOI/Brief+Search
      query += "&displayField=title&displayField=creator"
    end
    query
  end

  def path
    '/primo_library/libweb/action/dlSearch.do'
  end

  def redirect_name
    :primo
  end
end
