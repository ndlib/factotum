module PurchaseRequestsHelper
  def purchase_request_header(title = "Recommend a Purchase")
    content_for(:content_title, content_tag(:h1, title))
  end

  def purchase_request_breadcrumb(*crumbs)
    crumbs.unshift("Recommend a Purchase")
    crumbs.unshift(link_to("Request Forms", "/help/request-forms.shtml"))
    breadcrumb(*crumbs)
  end
end
