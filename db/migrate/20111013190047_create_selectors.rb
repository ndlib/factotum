class CreateSelectors < ActiveRecord::Migration
  def change
    create_table :selectors do |t|
      t.string :netid
      t.timestamps
    end
  end
end
