class AddFloorsTable < ActiveRecord::Migration
  def change
    create_table :floors do | t |
      t.string :name
      t.integer :library_id
    end


    add_index :floors, :library_id
  end

end
