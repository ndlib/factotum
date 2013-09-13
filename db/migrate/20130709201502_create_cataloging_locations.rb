class CreateCatalogingLocations < ActiveRecord::Migration
  def change
    create_table :cataloging_locations do |t|
	t.string :name
	t.timestamps
    end
  end
end
