class DirectoryUniversityCommittee < DirectoryOrganizationalUnit
  

  def self.sorted
    self.order(:name)
  end

end
