class AddFormatIdToLocations < ActiveRecord::Migration
  def change
	add_column :cataloging_locations, :format_id, :integer
  end
end
