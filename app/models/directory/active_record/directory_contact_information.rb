class DirectoryContactInformation < ActiveRecord::Base
  
  #contactable can be employee or organizational unit
  belongs_to :contactable, polymorphic: true
  
  belongs_to :address, :class_name => "DirectoryContactAddress"
  belongs_to :email, :class_name => "DirectoryContactEmail"
  belongs_to :fax, :class_name => "DirectoryContactFax"
  belongs_to :phone, :class_name => "DirectoryContactPhone"
  belongs_to :webpage, :class_name => "DirectoryContactWebpage"


  validates :contactable_id, presence: true
  validates :contact_information, presence: true


  scope :sorted, -> { self.order(primary_method: :desc, type: :asc) }

  def is_primary?
    self.primary_method
  end

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


# need to force load development due to class cacheing losing subclasses/descendents...
# https://www.ruby-forum.com/topic/1642198 
require_dependency 'directory_contact_address'
require_dependency 'directory_contact_email'
require_dependency 'directory_contact_fax'
require_dependency 'directory_contact_phone'
require_dependency 'directory_contact_webpage'