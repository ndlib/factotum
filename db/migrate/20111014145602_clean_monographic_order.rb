class CleanMonographicOrder < ActiveRecord::Migration
  def up
    change_column :monographic_orders, :price, :string
    
    remove_column :monographic_orders, :oclc_link
    remove_column :monographic_orders, :sublibrary
    remove_column :monographic_orders, :collection
    remove_column :monographic_orders, :selector_name
    remove_column :monographic_orders, :publication_place
  end

  def down
    change_column :monographic_orders, :price, :decimal, :precision => 10, :scale => 2
    
    add_column :monographic_orders, :oclc_link, :string
    add_column :monographic_orders, :sublibrary, :string
    add_column :monographic_orders, :collection, :string
    add_column :monographic_orders, :selector_name, :string
    add_column :monographic_orders, :publication_place, :string
  end
end
