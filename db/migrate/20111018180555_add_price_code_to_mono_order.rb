class AddPriceCodeToMonoOrder < ActiveRecord::Migration
  def change
    add_column :monographic_orders, :price_code, :string, :limit => 3
  end
end
