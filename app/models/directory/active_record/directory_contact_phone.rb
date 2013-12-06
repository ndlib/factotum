class DirectoryContactPhone < DirectoryContactInformation

  validate :is_valid_phone_number

end
