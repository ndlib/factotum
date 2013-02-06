class AcquisitionOrder < ActiveRecord::Base
  has_attached_file :attachment
  
  belongs_to :creator, :class_name => 'User', :foreign_key => 'creator_netid', :primary_key => 'username'
  belongs_to :selector, :class_name => 'Selector', :foreign_key => 'selector_netid', :primary_key => 'netid'
  
  validates_presence_of :title, :selector_netid
  validates_presence_of :publisher, :if => :publisher_required?, :message => "Publisher name is required"
  validates_presence_of :publication_year, :unless => :publication_year_unknown?
  validates_presence_of :author, :unless => :author_unknown?
  validates_presence_of :fund, :if => :fund_required?
  
  def self.default_order
    self.order("created_at DESC")
  end
  
  def self.since(date)
    where("created_at >= ?", date.to_time.beginning_of_day)
  end
  
  def self.until(date)
    where("created_at <= ?", date.to_time.end_of_day)
  end

  def self.selector_is(selector)
    where(selector_netid: selector.netid)
  end

  def self.creator_is(creator)
    where(creator_netid: creator.netid)
  end

  def display_fields
    fields = {}
    self.class.display_fields.each do |field|
      if field.is_a?(Array)
        caption = field[0]
        field = field[1]
      else
        caption = field.to_s.humanize
      end 
      if self.send(field).present?
        fields[caption] = self.send(field)
      end
    end
    fields
  end

  def self.display_fields
    [
      ["Order Request #",:id],
      :selector, 
      ["Fund", :selected_fund], 
      ["Cataloging Location", :selected_cataloging_location], 
      :title, 
      ["Format", :selected_format], 
      ["Author", :display_author], 
      :publisher, 
      :publication_year, 
      ["OCLC number", :oclc_number], 
      ["ISBN", :isbn], 
      :price_code, 
      :price, 
      :edition, 
      :series, 
      :recommended_supplier, 
      ["Pre-Order", :preorder],
      ["Pre-Order Availability", :preorder_expected_availability],
      :added_copy, 
      :added_copy_system_number, 
      :added_volume, 
      :added_volume_system_number, 
      ["Link", :link_source]
    ]
  end

  def display_title(truncate = 30)
    if truncate == false
      title_string = title
    else
      title_string = title.truncate(truncate)
    end
    "Order Request ##{id}: #{title_string}"
  end

  def display_date
    created_at.strftime("%-m/%-d/%Y")
  end
  
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
    self.format_other.present? ? self.format_other : self.format
  end
  
  def selected_fund
    self.fund_other.present? ? self.fund_other : self.fund
  end
  
  def selected_cataloging_location
    self.cataloging_location_other.present? ? self.cataloging_location_other : self.cataloging_location 
  end
  
  private
  
    def fund_required?
      self.fund_other.blank?
    end
  
    def publisher_required?
      self.format_other.blank? && !self.publisher_unknown?
    end
end
