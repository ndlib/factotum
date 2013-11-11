class Search::PrimoRedirect < Search::Redirect
  DEFAULT_SEARCH_SCOPES = {
    'NDU' => {
      'onesearch' => 'malc_blended',
      'nd_campus' => 'nd_campus',
      'malc' => 'malc',
    },
    'BCI' => {
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
    [:q, :institution, :vid, :tab, :search_scope]
  end

  def query_param
    if params[:q].present?
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

  def search_scope
    params[:search_scope] || default_search_scope
  end

  def default_search_scope
    if institution && tab && DEFAULT_SEARCH_SCOPES[institution] && DEFAULT_SEARCH_SCOPES[institution][tab]
      DEFAULT_SEARCH_SCOPES[institution][tab]
    end
  end

  def query_params
    {
      query: query_param,
      institution: institution,
      vid: vid,
      tab: tab,
      search_scope: search_scope,
      indx: 1,
      bulkSize: 10,
      highlight: 'true',
      dym: 'true',
      onCampus: 'false'
    }
  end

  def path
    '/primo_library/libweb/action/dlSearch.do'
  end

  def redirect_name
    if institution == 'NDU'
      :primo
    else
      :catalogplus
    end
  end
end
