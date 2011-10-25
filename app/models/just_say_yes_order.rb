class JustSayYesOrder < AcquisitionOrder
  validates_presence_of :price, :requester
  validates_presence_of :cataloging_location, :if => :cataloging_location_required?
  
  private
  
    def cataloging_location_required?
      self.cataloging_location_other.blank? && !self.electronic_resource?
    end
end
