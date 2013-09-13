class CreateCatalogingSpecialProcedureTypes < ActiveRecord::Migration
  def change
      create_table :cataloging_special_procedure_types do |t|
	t.string :name
      	t.timestamps
      end
  end
end
