class Search::EjournalRedirect < Search::Redirect
  def accept_params
    [:q]
  end

  def path
    '/catalog'
  end

  def redirect_name
    :ejournals
  end
end
