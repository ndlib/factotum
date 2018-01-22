class RushOrderPatronRequest < ActiveRecord::Migration
  def up
    AcquisitionOrder.all.each do |order|
      if(order.rush_order_reason.present?)
        if(order.rush_order_reason.eql? "Patron reqeust")
          order.update_attribute(:rush_order_reason, "Needed by patron--time sensitive")
        end
      end
    end
  end

  def down
    AcquisitionOrder.all.each do |order|
      if(order.rush_order_reason.present?)
        if(order.rush_order_reason.eql? 'Needed by patron--time sensitive')
          order.update_attribute(:rush_order_reason, "Patron reqeust")
        end
      end
    end
  end

end
