class MonographicOrder < ActiveRecord::Base
  has_attached_file :attachment
  validates_presence_of :title, :publication_year, :selector_netid
  validates_presence_of :publisher, :if => :publisher_required?, :message => "Publisher name is required"
  validates_presence_of :author, :unless => :author_unknown?
  validates_presence_of :fund, :if => :fund_required?
  validates_presence_of :cataloging_location, :if => :cataloging_location_required?
  validates_presence_of :rush_order_reason, :if => :rush_order_reason_required?, :message => "is required for rush orders"
  
  def errors_on_rush_order?
    [:rush_order, :rush_order_reason, :rush_order_reason_other].any?{|field| self.errors[field].present?}
  end
  
  private
    def rush_order_reason_required?
      self.rush_order? && self.rush_order_reason_other.blank?
    end
    
    def fund_required?
      self.fund_other.blank?
    end
    
    def publisher_required?
      self.format != "Other"
    end
    
    def cataloging_location_required?
      self.cataloging_location_other.blank?
    end
end
