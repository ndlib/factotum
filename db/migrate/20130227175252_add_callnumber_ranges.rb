class AddCallnumberRanges < ActiveRecord::Migration
  def change
    create_table :maps_call_number_ranges do | t |
      t.string :collection_code
      t.string :sublibrary_code
      t.string :begin_call_number
      t.string :end_call_number
      t.integer :floor_map_id
    end

    add_index :maps_call_number_ranges, [ :collection_code, :sublibrary_code, :begin_call_number, :end_call_number ], :name => 'maps_call_number_ranges_index'
    add_index :maps_call_number_ranges, :floor_map_id
  end
end
