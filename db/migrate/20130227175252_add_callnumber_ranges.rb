class AddCallnumberRanges < ActiveRecord::Migration
  def change
    create_table :map_call_number_ranges do | t |
      t.string :collection_code
      t.string :sublibrary_code
      t.string :begin_call_number
      t.string :end_call_number
      t.integer :map_file_id
    end

    add_index :map_call_number_ranges, [ :collection_code, :sublibrary_code, :begin_call_number, :end_call_number ], :name => 'maps_call_number_ranges_index'
    add_index :map_call_number_ranges, :map_file_id
  end
end
