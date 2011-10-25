class CreateAcquisitionOrders < ActiveRecord::Migration
  def change
    rename_table :monographic_orders, :acquisition_orders
  end
end
