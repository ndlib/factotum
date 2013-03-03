class AddMaps < ActiveRecord::Migration
  def change
    create_table :maps_floor_maps do | t |
      t.string :name
      t.string :search_code
      t.string :file_file_name
      t.string :file_content_type
      t.string :file_file_size
      t.datetime :file_updated_at
      t.integer :building_id
    end

    add_index :maps_floor_maps, :building_id
    add_index :maps_floor_maps, :search_code
  end
end
