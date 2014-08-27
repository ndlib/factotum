class Search::PrimoRedirect < Search::Redirect
  SEARCH_SCOPES = {
    'NDU' => {
      'nd_campus' => {
        'partner' => 'scope:(MALC),scope:("NDUPCH"),scope:(NDU),scope:(BCI),scope:(HCC),scope:(SMC),scope:(NDLAW)',
        'spec_coll' => 'scope:(RARE),scope:(MRARE),scope:(SPEC)'
      },
    }
  }

  def accept_params
    [:q, :institution, :vid, :tab, :search_scope, :mode]
  end

  def query_param
    "#{params[:q]}"
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
    if params[:search_scope] && institution && tab && SEARCH_SCOPES[institution] && SEARCH_SCOPES[institution][tab]
      SEARCH_SCOPES[institution][tab][params[:search_scope]]
    end
  end

  def query_params
    # If there's no query term we only need a very basic set of parameters
    params_hash = {
      institution: institution,
      vid: vid,
      tab: tab,
      mode: mode,
      'vl(freeText0)' => query_param,
      indx: 1,
      fn: 'search',
    }
    if search_scope.present?
      params_hash['scp.scps'] = search_scope
    end
    params_hash
  end

  def query_string
    params_hash = query_params
    query = "?#{params_hash.to_query}"
    query
  end

  def path
    '/primo_library/libweb/action/search.do'
  end

  def redirect_name
    :primo
  end
end
