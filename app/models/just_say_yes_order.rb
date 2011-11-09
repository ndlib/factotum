class TrueOrFalseValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors[attribute] << (options[:message] || "can't be blank") unless value === true || value === false
  end
end

class JustSayYesOrder < AcquisitionOrder
  validates_presence_of :price, :requester
  validates :electronic_resource, :true_or_false => true
  validates_presence_of :cataloging_location, :if => :cataloging_location_required?
  
  before_save :clear_cataloging_location
  
  def self.default_order
    self.order("created_at ASC")
  end
  
  def self.auto_fields
    [["Selector", :selector], ["Fund", :selected_fund], ["Price code", :price_code], ["Price", :price], ["Electronic resource", :electronic_resource], ["Cataloging Location", :selected_cataloging_location], ["ND Requester", :requester], ["Title", :title], ["Format", :selected_format], ["Author", :display_author], ["Publisher/Provider", :display_publisher], ["Publication Year", :display_publication_year], ["OCLC number", :oclc_number], ["ISBN", :isbn], ["Link", :link_source]]
  end
  
  private
    
    def clear_cataloging_location
      if self.electronic_resource?
        self.cataloging_location = nil
        self.cataloging_location_other = nil
      end
    end
    
    def cataloging_location_required?
      self.cataloging_location_other.blank? && !self.electronic_resource?
    end
end
