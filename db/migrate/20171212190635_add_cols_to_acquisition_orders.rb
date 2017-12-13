class AddColsToAcquisitionOrders < ActiveRecord::Migration
  def change
    add_column :acquisition_orders, :purchase_type, :string
    add_column :acquisition_orders, :supplier_info, :string
  end
end
