class TrueOrFalseValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors[attribute] << (options[:message] || "can't be blank") unless value === true || value === false
  end
end

class JustSayYesOrder < AcquisitionOrder
  validates_presence_of :price, :requester
  validates :electronic_resource, :true_or_false => true
  validates_presence_of :cataloging_location, :if => :cataloging_location_required?
  
  private
  
    def cataloging_location_required?
      self.cataloging_location_other.blank? && !self.electronic_resource?
    end
end
