class RemoveSavedDayRangesFromHours < ActiveRecord::Migration
  def up
    remove_column :hours, :saved_day_ranges
  end

  def down
    add_column :hours, :saved_day_ranges, :string
  end
end
