class AddIndexToCatalogingLocation < ActiveRecord::Migration
  def change
    add_index :acquisition_orders, :cataloging_location
  end
end
