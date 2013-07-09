class CreateCatalogingFormats < ActiveRecord::Migration
  def change
    create_table :cataloging_formats do |t|
	t.string :name
      	t.timestamps
    end
  end
end
