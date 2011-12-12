module EjournalHelper
  def ejournal_header
    content_for(:content_title, render(:partial => "ejournal/header"))
    content_for(:breadcrumb, render(:partial => "ejournal/breadcrumb"))
  end
  
  def ejournal_before_tab()
    render :partial => 'ejournal/before_tab'
  end
  
  def ejournal_after_tab()
    render :partial => 'ejournal/after_tab'
  end
  
  def ejournal_form()
    render :partial => 'ejournal/form'
  end
end
