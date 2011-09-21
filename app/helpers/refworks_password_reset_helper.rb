module RefworksPasswordResetHelper
  def refworks_header
    content_for(:content_title, render(:partial => "shared/refworks_header"))
    content_for(:breadcrumb, render(:partial => "shared/refworks_breadcrumb"))
  end
end
