class DirectoryLibraryCommittee < DirectoryOrganizationalUnit
  

  def self.sorted
    self.order(:name)
  end

end