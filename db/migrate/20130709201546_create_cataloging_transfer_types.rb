class CreateCatalogingTransferTypes < ActiveRecord::Migration
  def change
    create_table :cataloging_transfer_types do |t|
	t.string :name
      	t.timestamps
    end
  end
end
