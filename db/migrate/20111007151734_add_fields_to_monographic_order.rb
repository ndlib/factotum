class AddFieldsToMonographicOrder < ActiveRecord::Migration
  def change
    add_column :monographic_orders, :format_other, :string
    add_column :monographic_orders, :author_unknown, :boolean
    add_column :monographic_orders, :selector_netid, :string
    add_column :monographic_orders, :selector_name, :string
    add_column :monographic_orders, :sublibrary, :string
    add_column :monographic_orders, :collection, :string
    add_column :monographic_orders, :price, :decimal, :precision => 10, :scale => 2
    add_column :monographic_orders, :oclc_number, :string
    add_column :monographic_orders, :oclc_link, :string
    add_column :monographic_orders, :recommended_supplier, :string
    add_column :monographic_orders, :edition, :string
    
    add_column :monographic_orders, :creator_netid, :string
  end
end
