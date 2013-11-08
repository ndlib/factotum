class Directory::ContactInformation < ActiveRecord::Base
  
  belongs_to :address, :class_name => "Directory::Address"
  belongs_to :email, :class_name => "Directory::Email"
  belongs_to :fax, :class_name => "Directory::Fax"
  belongs_to :phone, :class_name => "Directory::Phone"
  belongs_to :webpage, :class_name => "Directory::Webpage"

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
