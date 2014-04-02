class ChangeAcquisitionOrdersTitle < ActiveRecord::Migration
  def up
    change_column :acquisition_orders, :title, :string, limit: 1024
  end

  def down
    change_column :acquisition_orders, :title, :string
  end
end
