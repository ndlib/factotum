module SearchHelper
  def search_header(title = "Search")
    set_root_crumb(link_to("Hesburgh Libraries", find_resources_demo_path))
    content_for(:content_title, content_tag(:h1, title))
  end

  def search_container(search_type, title)
    locals = {
      search_type: search_type,
      title: title,
      search_url: send("search_api_#{search_type}_url", params[:q]),
      search_query: params[:q]
    }
    render partial: "/search/search_container", locals: locals
  end

  def search_breadcrumb(*crumbs)
    crumbs.unshift(link_to("Search", find_resources_path))
    breadcrumb(*crumbs)
  end

  def search_api_catalog_url(search_term)
    API::Service.get(:discovery).catalog_url(search_term)
  end

  def search_api_electronic_url(search_term)
    API::Service.get(:discovery).electronic_url(search_term)
  end

  def search_api_blended_url(search_term)
    API::Service.get(:discovery).blended_url(search_term)
  end

  def search_demo_onesearch_homepage(&block)
    onesearch_contents = nil
    if block
      onesearch_contents = capture(&block)
    end
    render partial: "/search/homepage_contents", locals: {onesearch_contents: onesearch_contents}
  end

  def primo_search_url(parameters = {})
    default_parameters = {
      mode: "Basic",
      vid: "NDU",
      tab: "onesearch"
    }
    if params[:q].present?
      default_parameters.merge!({
        "vl(freeText0)" => params[:q],
        fn: "search"
      })
    end
    "http://onesearch.library.nd.edu/primo_library/libweb/action/search.do?#{default_parameters.merge(parameters).to_query}"
  end
end
