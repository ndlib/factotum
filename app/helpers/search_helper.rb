module SearchHelper
  def search_header(title = "Search")
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
end
