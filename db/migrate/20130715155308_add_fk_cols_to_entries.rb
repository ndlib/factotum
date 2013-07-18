class AddFkColsToEntries < ActiveRecord::Migration
  def change
      add_column :cataloging_entries, :transfer_type_id, :integer
      add_column :cataloging_entries, :special_procedure_type_id, :integer
  end
end
