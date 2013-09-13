class CreateJoinTableLocationFormat < ActiveRecord::Migration
  def change

    remove_column :cataloging_locations, :format_id

    create_table :cataloging_locations_formats  do |t|
	t.integer :location_id
	t.integer :format_id
    end

  end

end
