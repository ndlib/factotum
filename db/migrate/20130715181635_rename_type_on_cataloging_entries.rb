class RenameTypeOnCatalogingEntries < ActiveRecord::Migration
  def change
	rename_column :cataloging_entries, :procedure_type, :type
  end
end
