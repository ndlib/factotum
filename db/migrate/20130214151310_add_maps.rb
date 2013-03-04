class AddMaps < ActiveRecord::Migration
  def change
    create_table :maps_floor_maps do | t |
      t.string :name
      t.integer :floor_number
      t.string :search_code
      t.string :map_file_name
      t.string :map_content_type
      t.string :map_file_size
      t.datetime :map_updated_at
      t.integer :building_id
    end

    add_index :maps_floor_maps, :building_id
    add_index :maps_floor_maps, :search_code
  end
end
