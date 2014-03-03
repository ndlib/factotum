module AssetsHelper
  include HesburghAssets::AssetsHelper

  def breadcrumb(*crumbs)
    crumbs.unshift(root_crumb)
    crumbs.delete(nil)

    crumbs_content = content_tag(:p, raw(crumbs.join(" &gt; ")))
    user_links = render partial: 'layouts/user_links'
    content_for(:breadcrumb, user_links + crumbs_content)
  end

  def root_crumb
    @root_crumb || link_to("Hesburgh Libraries", library_url())
  end

  def set_root_crumb(crumb)
    @root_crumb = crumb
  end
end
