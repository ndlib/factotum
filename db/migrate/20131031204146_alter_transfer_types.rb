class AlterTransferTypes < ActiveRecord::Migration
  def change
    remove_column :cataloging_transfer_types, :name
    add_column :cataloging_transfer_types, :from_location_id, :integer
    add_column :cataloging_transfer_types, :to_location_id, :integer
  end
end
