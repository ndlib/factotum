class MonographicOrder < ActiveRecord::Base
  has_attached_file :attachment
  
  belongs_to :creator, :class_name => 'User', :foreign_key => 'creator_netid', :primary_key => 'username'
  belongs_to :selector, :class_name => 'Selector', :foreign_key => 'selector_netid', :primary_key => 'netid'
  
  validates_presence_of :title, :publication_year, :selector_netid
  validates_presence_of :publisher, :if => :publisher_required?, :message => "Publisher name is required"
  validates_presence_of :author, :unless => :author_unknown?
  validates_presence_of :fund, :if => :fund_required?
  validates_presence_of :cataloging_location, :if => :cataloging_location_required?
  validates_presence_of :rush_order_reason, :if => :rush_order_reason_required?, :message => "is required for rush orders"
  
  def errors_on_rush_order?
    [:rush_order, :rush_order_reason, :rush_order_reason_other].any?{|field| self.errors[field].present?}
  end
  
  def display_author
    self.author_unknown? ? "Unknown" : self.author
  end
  
  def selected_format
    self.format.present? ? self.format : self.format_other 
  end
  
  def selected_rush_order_reason
    self.rush_order_reason.present? ? self.rush_order_reason : self.rush_order_reason_other 
  end
  
  def selected_cataloging_location
    self.cataloging_location.present? ? self.cataloging_location : self.cataloging_location_other 
  end
  
  def selected_fund
    self.fund.present? ? self.fund : self.fund_other 
  end
  
  private
    def rush_order_reason_required?
      self.rush_order? && self.rush_order_reason_other.blank?
    end
    
    def fund_required?
      self.fund_other.blank?
    end
    
    def publisher_required?
      self.format_other.blank?
    end
    
    def cataloging_location_required?
      self.cataloging_location_other.blank?
    end
end
