class ChangeAcquisitionOrdersLinkLength < ActiveRecord::Migration
  def up
    change_column :acquisition_orders, :link_source, :string, limit: 1024
  end

  def down
    change_column :acquisition_orders, :link_source, :string
  end
end
