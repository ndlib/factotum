class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :code
      t.integer :current_hours_id

      t.timestamps
    end

    add_index :services, :code
  end

end
