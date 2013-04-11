module SearchHelper
  def search_header(title = "Search")
    content_for(:content_title, content_tag(:h1, title))
  end

  def search_breadcrumb(*crumbs)
    crumbs.unshift(link_to("Search", find_resources_path))
    breadcrumb(*crumbs)
  end

  def search_catalog_api_url

  end

  def search_electronic_api_url

  end
end
