class ChangePublicationYearToString < ActiveRecord::Migration
  def up
    change_column :monographic_orders, :publication_year, :string
  end

  def down
    # This migration cannot be undone
  end
end
