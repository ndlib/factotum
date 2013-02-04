class AddPreorderToOrders < ActiveRecord::Migration
  def change
    add_column :acquisition_orders, :preorder, :boolean
    add_column :acquisition_orders, :preorder_expected_availability, :string
  end
end
