class AddSystemNumber < ActiveRecord::Migration
  def change
    add_column :monographic_orders, :added_copy_system_number, :string
    add_column :monographic_orders, :added_volume_system_number, :string
  end
end
