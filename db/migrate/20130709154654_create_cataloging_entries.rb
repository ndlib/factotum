class CreateCatalogingEntries < ActiveRecord::Migration
  def change
    create_table :cataloging_entries do |t|
      t.integer :user_id
      t.date :entry_date
      t.date :month_start_date
      t.integer :location_id
      t.integer :format_id
      t.string :procedure_type
      t.integer :titles_count
      t.integer :volumes_count
      t.integer :pieces_count
      t.timestamps
    end
  end
end
