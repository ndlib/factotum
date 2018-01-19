class RushOrderPatronRequest < ActiveRecord::Migration
  def up
    AcquisitionOrder.all.each do |order|
      if(order.rush_order_reason.present?)
        puts "#{order.id} had rush_order_reason '#{order.rush_order_reason}''"
        if(order.rush_order_reason.eql? "Patron reqeust")
          puts "Patron reqeust FOUND"
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