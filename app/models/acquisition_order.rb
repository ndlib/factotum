class AcquisitionOrder < ActiveRecord::Base
  has_attached_file :attachment
  do_not_validate_attachment_file_type :attachment

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

  def self.creators
    netids = self.select("DISTINCT(creator_netid)").collect(&:creator_netid)
    User.default_order.where(username: netids)
  end

  def self.selectors
    netids = self.select("DISTINCT(selector_netid)").collect(&:selector_netid)
    Selector.default_order.where(netid: netids)
  end

  def display_fields(options = {})
    options.reverse_merge!({
      include_blank_values: false
    })
    fields = {}
    self.class.display_fields.each do |field|
      if field.is_a?(Array)
        caption = field[0]
        field = field[1]
      else
        caption = field.to_s.humanize
      end
      if options[:include_blank_values] || self.send(field).present?
        fields[caption] = self.send(field)
      end
    end
    fields
  end

  def copy_from_purchase_request(purchase_request)
    self.title = purchase_request.title
    self.publication_year = purchase_request.year
    self.publisher = purchase_request.publisher
    self.author = purchase_request.author
    self.format = purchase_request.format
    self.edition = purchase_request.edition
    self.series = purchase_request.series
    self.oclc_number = purchase_request.oclc
    self.isbn = purchase_request.isbn
    self.price = purchase_request.price
    self.additional_details = purchase_request.comments
    if purchase_request.hold_for_requester?
      self.requester = purchase_request.requester_name
    else
      self.requester = nil
    end
  end

  def csv_fields(link_prefix = nil)
    fields = display_fields(include_blank_values: true)
    fields[:additional_details] = self.additional_details
    if self.attachment.present?
      fields[:file] = "#{link_prefix}#{self.attachment.url}"
    end
    fields
  end

  def to_csv(link_prefix = nil)
    csv_fields(link_prefix).values
  end

  def self.to_csv(link_prefix = nil)
    require 'csv'
    title_row = self.display_fields.collect do |name,field|
      if name.is_a?(Symbol)
        name.to_s.titleize
      else
        name
      end
    end
    title_row += ["Additional Details", "File"]
    csv_string = CSV.generate do |csv|
      csv << title_row
      self.all.each do |order|
        csv << order.to_csv(link_prefix)
      end
    end
    csv_string
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
      :added_volume_copy,
      :volume_copy_system_number,
      ["Link", :link_source]
    ]
  end

  def self.selector_currencies
    orders = self.where('price_code IS NOT NULL').group('selector_netid, price_code')
        .select('price_code, selector_netid, COUNT(price_code) AS currency_count')
        .order('currency_count DESC')
        .group_by(&:selector_netid)

    currencies = {}
    orders.each do |selector_netid, selector_currencies|
      currencies[selector_netid] = selector_currencies.collect{|order| order.currency}
    end
    currencies
  end

  def display_title(truncate = 30)
    if truncate == false
      title_string = title
    else
      title_string = title.truncate(truncate)
    end
    "Order Request ##{id}: #{title_string}"
  end

  def date
    created_at
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

  def currency
    if self.price_code
      Acquisitions::Currency.find(self.price_code)
    end
  end

  private

    def fund_required?
      self.fund_other.blank?
    end

    def publisher_required?
      self.format_other.blank? && !self.publisher_unknown?
    end
end
