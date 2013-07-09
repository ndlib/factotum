class CreateCatalogingSpecialProcedures < ActiveRecord::Migration
  def change
    create_table :cataloging_special_procedures do |t|
	t.string :name
	t.date :expiration_date
      	t.timestamps
    end
  end
end
