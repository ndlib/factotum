class ChangeVolumeCopyAcquisitionOrders < ActiveRecord::Migration
  def up
    add_column :acquisition_orders, :added_volume_copy, :boolean
    add_column :acquisition_orders, :volume_copy_system_number, :string

    AcquisitionOrder.reset_column_information
    AcquisitionOrder.all.each do |order|
      if(order.added_volume_system_number.present?)
        #puts "#{order.id} had volume sys num #{order.added_volume_system_number}"
        order.update_attribute(:volume_copy_system_number, order.added_volume_system_number)
      elsif(order.added_copy_system_number.present?)
        #puts "#{order.id} had copy sys num #{order.added_copy_system_number}"
        order.update_attribute(:volume_copy_system_number, order.added_copy_system_number)
      else
        order.update_attribute(:volume_copy_system_number, '')
      end
    end
  end

  def down
    remove_column :acquisition_orders, :added_volume_copy
    remove_column :acquisition_orders, :volume_copy_system_number
  end
end
