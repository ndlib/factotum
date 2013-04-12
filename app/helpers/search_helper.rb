module SearchHelper
  def search_header(title = "Search")
    content_for(:content_title, content_tag(:h1, title))
  end

  def search_breadcrumb(*crumbs)
    crumbs.unshift(link_to("Search", find_resources_path))
    breadcrumb(*crumbs)
  end

  def search_catalog_api_url(search_term)
    API::Service.get(:discovery).catalog_url(search_term)
  end

  def search_electronic_api_url(search_term)
    API::Service.get(:discovery).electronic_url(search_term)
  end
end
