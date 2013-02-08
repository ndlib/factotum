class AcquisitionOrderSearch
  include ActiveAttr::Model

  attribute :start_date, type: Date
  attribute :end_date, type: Date
  attribute :selector_netid, type: String
  attribute :creator_netid, type: String

  def search(orders = AcquisitionOrder)
    if !orders.respond_to?(:base_class) || orders.base_class != AcquisitionOrder
      raise ArgumentError, "Argument must have a base_class of AcquisitionOrder"
    end
    orders = orders.default_order
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
end