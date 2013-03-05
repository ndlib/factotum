class AddBuildingsTable < ActiveRecord::Migration
  def change
    create_table :buildings do | t | 
      t.string :name
      t.string :search_code
    end

    add_index :buildings, :search_code
  end
end
