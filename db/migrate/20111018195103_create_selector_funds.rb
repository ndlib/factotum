class CreateSelectorFunds < ActiveRecord::Migration
  def change
    create_table :selector_funds do |t|
      t.string :netid
      t.string :name
      t.timestamps
    end
  end
end
