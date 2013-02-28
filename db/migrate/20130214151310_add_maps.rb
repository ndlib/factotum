class AddMaps < ActiveRecord::Migration
  def change
    create_table :map_files do | t |
      t.string :name
      t.string :search_code
      t.string :file_file_name
      t.string :file_content_type
      t.string :file_file_size
      t.datetime :file_updated_at
      t.integer :building_id
    end

  end
end
