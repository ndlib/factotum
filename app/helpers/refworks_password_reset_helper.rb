module RefworksPasswordResetHelper
  def refworks_header
    content_for(:content_title, render(:partial => "shared/refworks_header"))
    breadcrumb(link_to("Help", library_url("help")))
  end

  def refworks_help(format = :html)
    if format == :html
      content_tag(:p,
        raw("Please email #{mail_to("erhelp@listserv.nd.edu")} or telephone 574-631-5938, Electronic Resources with questions or concerns.")
      )
    else
      "Please email erhelp@listserv.nd.edu or telephone 574-631-5938, Electronic Resources with questions or concerns."
    end
  end
end
