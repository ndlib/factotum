class AcquisitionOrderSearch
  include ActiveAttr::Model
  include Enumerable

  attribute :start_date, type: Date
  attribute :end_date, type: Date
  attribute :selector_netid, type: String
  attribute :creator_netid, type: String

  delegate :where, :count, :each, to: :search

  def search
    orders = search_object.default_order
    if start_date.present?
      orders = orders.since(start_date)
    end
    if end_date.present?
      orders = orders.until(end_date)
    end
    if selector_netid.present?
      orders = orders.where(selector_netid: selector_netid)
    end
    if creator_netid.present?
      orders = orders.where(creator_netid: creator_netid)
    end
    orders
  end

  def present?
    !self.blank?
  end

  def blank?
    self.attributes.all?{|key,value| value.blank?}
  end

  def set_page(value)
    @page = value
  end

  def page
    search.page(@page)
  end

  def search_object=(orders)
    if !orders.respond_to?(:base_class) || orders.base_class != AcquisitionOrder
      raise ArgumentError, " must have a base_class of AcquisitionOrder"
    end
    @search_object = orders
  end

  def search_object
    @search_object ||= AcquisitionOrder
  end
end