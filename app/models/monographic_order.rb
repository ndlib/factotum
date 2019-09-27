class MonographicOrder < AcquisitionOrder
  validates_presence_of :cataloging_location, :if => :cataloging_location_required?
  validates_presence_of :rush_order_reason, :if => :rush_order_reason_required?, :message => "is required for rush orders"
  validates_presence_of :preorder_expected_availability, :if => :preorder_reason_required?, :message => "is required for pre-orders"
  validates_presence_of :volume_copy_system_number, :if => :volume_copy_reason_required?, :message => "Aleph is required"

  def errors_on_rush_order?
    [:rush_order, :rush_order_reason, :rush_order_reason_other].any?{|field| self.errors[field].present?}
  end

  def selected_rush_order_reason
    self.rush_order_reason_other.present? ? self.rush_order_reason_other : self.rush_order_reason
  end

  def self.display_fields
    [
      ["Order Request #",:id],
      ["ILLiad Patron",:order_request],
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
      :supplier_info,
      ["Pre-Order", :preorder],
      ["Pre-Order Availability", :preorder_expected_availability],
      :added_volume_copy,
      ["Volume\\Copy System Number", :volume_copy_system_number],
      ["Link", :link_source],
      :purchase_type,
      ["Attachments", :attachment_present]
    ]
  end

  def self.selector_cataloging_locations
    orders = self.where('cataloging_location IS NOT NULL').group('selector_netid, cataloging_location')
        .select('cataloging_location, selector_netid, COUNT(cataloging_location) AS location_count')
        .order('location_count DESC')
        .group_by(&:selector_netid)

    cataloging_locations = {}
    orders.each do |selector_netid, locations|
      cataloging_locations[selector_netid] = locations.collect{|order| order.cataloging_location}
    end
    cataloging_locations
  end

  private
    def rush_order_reason_required?
      self.rush_order? && self.rush_order_reason_other.blank?
    end

    def preorder_reason_required?
      self.preorder? && self.preorder_expected_availability.blank?
    end

    def volume_copy_reason_required?
      self.added_volume_copy? && self.volume_copy_system_number.blank?
    end

    def cataloging_location_required?
      self.cataloging_location_other.blank?
    end

    def order_request
      "OrderRequest"
    end

    def attachment_present
      # if self.attachment.present?
      if self.acquisition_order_attachments.present?
        attachment_list = ""
        self.acquisition_order_attachments.each do |attachment|
          attachment_list += attachment.attachment_file_name + " "
        end
        attachment_list
      else
        "None"
      end
    end
end
