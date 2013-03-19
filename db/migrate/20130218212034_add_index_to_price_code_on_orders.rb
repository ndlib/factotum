class AddIndexToPriceCodeOnOrders < ActiveRecord::Migration
  def change
    add_index :acquisition_orders, :price_code
  end
end
