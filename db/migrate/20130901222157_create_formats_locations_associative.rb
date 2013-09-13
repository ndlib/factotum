class CreateFormatsLocationsAssociative < ActiveRecord::Migration
  def change

	create_table :cataloging_locations_formats, :id => false do |t|
  		t.references :cataloging_locations, :null => false
  		t.references :cataloging_formats, :null => false
	end
 
  end
end
