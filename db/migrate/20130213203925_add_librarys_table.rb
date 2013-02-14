class AddLibrarysTable < ActiveRecord::Migration
  def change
    create_table :libraries do | t | 
      t.string :name
      t.string :code
    end

    add_index :libraries, :code
  end
end
