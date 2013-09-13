class RemoveFormatIdFromLocations < ActiveRecord::Migration
  def change

	remove_column :cataloging_locations, :format_id

  end
end
