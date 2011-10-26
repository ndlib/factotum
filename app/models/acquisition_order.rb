class AcquisitionOrder < ActiveRecord::Base
  has_attached_file :attachment
  
  belongs_to :creator, :class_name => 'User', :foreign_key => 'creator_netid', :primary_key => 'username'
  belongs_to :selector, :class_name => 'Selector', :foreign_key => 'selector_netid', :primary_key => 'netid'
  
  validates_presence_of :title, :selector_netid
  validates_presence_of :publisher, :if => :publisher_required?, :message => "Publisher name is required"
  validates_presence_of :publication_year, :unless => :publication_year_unknown?
  validates_presence_of :author, :unless => :author_unknown?
  validates_presence_of :fund, :if => :fund_required?
  
  def display_author
    self.author_unknown? ? "Unknown" : self.author
  end
  
  def display_publisher
    self.publisher_unknown? ? "Unknown" : self.publisher
  end
  
  def display_publication_year
    self.publication_year_unknown? ? "Unknown" : self.publication_year
  end
  
  def selected_format
    self.format.present? ? self.format : self.format_other 
  end
  
  def selected_fund
    self.fund.present? ? self.fund : self.fund_other 
  end
  
  def selected_cataloging_location
    self.cataloging_location.present? ? self.cataloging_location : self.cataloging_location_other 
  end
  
  private
  
    def fund_required?
      self.fund_other.blank?
    end
  
    def publisher_required?
      self.format_other.blank? && !self.publisher_unknown?
    end
end
