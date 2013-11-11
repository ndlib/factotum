class DirectoryContactInformation < ActiveRecord::Base
  
  belongs_to :address, :class_name => "DirectoryAddress"
  belongs_to :email, :class_name => "DirectoryEmail"
  belongs_to :fax, :class_name => "DirectoryFax"
  belongs_to :phone, :class_name => "DirectoryPhone"
  belongs_to :webpage, :class_name => "DirectoryWebpage"

  belongs_to :contactable, polymorphic: true

  validates :contact_information, presence: true

  private

    def is_valid_phone_number
      number = self.contact_information
      errors.add(:contact_information,"may not be blank") if number.blank?
      errors.add(:contact_information, "contains a letter") if number.match(/[a-zA-Z]/)
      digits_only = number.gsub(/[^\d]/, '')
      errors.add(:contact_information, "not long enough") if digits_only.size < 7
      errors.add(:contact_information, "too long") if digits_only.size > 15
    end

end
