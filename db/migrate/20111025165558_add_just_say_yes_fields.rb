class AddJustSayYesFields < ActiveRecord::Migration
  def change
    add_column :acquisition_orders, :publisher_unknown, :boolean
    add_column :acquisition_orders, :publication_year_unknown, :boolean
    add_column :acquisition_orders, :electronic_resource, :boolean
  end
end
