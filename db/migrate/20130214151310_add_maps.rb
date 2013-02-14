class AddMaps < ActiveRecord::Migration
  def change
    create_table :map_files do | t |
      t.string :name
      t.string :file_file_name
      t.string :file_content_type
      t.string :file_file_size
      t.datetime :file_updated_at
    end


    create_table :floors_map_files do | t |
      t.integer :map_file_id
      t.integer :floor_id
    end

    add_index :floors_map_files, [:map_file_id, :floor_id]
  end
end
