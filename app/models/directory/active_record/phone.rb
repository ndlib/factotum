class Directory::Phone < Directory::ContactInformation
	
        validate :is_valid_phone_number
        



end