class CreateHours < ActiveRecord::Migration
  def change

    create_table :hours do |t|
      t.string :type

      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :sunday
      t.string :name
      t.string :saved_day_ranges
      t.datetime :start_date
      t.datetime :end_date
      t.string :prepend_text
      t.string :postpend_text
      t.string :service_id

      t.timestamps
    end

    add_index :hours, :service_id
    add_index :hours, :type
  end
end
