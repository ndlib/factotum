class DirectoryFax < DirectoryContactInformation
	
        validate :is_valid_phone_number
        # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end
