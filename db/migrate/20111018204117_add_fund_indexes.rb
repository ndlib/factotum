class AddFundIndexes < ActiveRecord::Migration
  def change
    add_index :selector_funds, :netid
    add_index :selector_funds, :name
  end
end
