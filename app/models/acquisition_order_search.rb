class AcquisitionOrderSearch
  include ActiveModel::Model

  attr_accessor :start_date, :end_date, :selector, :creator

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
    if selector.present?
      orders = orders.selector_is(selector)
    end
    if creator.present?
      orders = orders.creator_is(creator)
    end
    orders
  end
end