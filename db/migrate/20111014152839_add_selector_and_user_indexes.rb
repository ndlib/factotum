class AddSelectorAndUserIndexes < ActiveRecord::Migration
  def change
    add_index :users, :username
    add_index :selectors, :netid
    add_index :monographic_orders, :creator_netid
    add_index :monographic_orders, :selector_netid
    add_index :monographic_orders, :created_at
  end
end
