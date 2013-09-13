class RemoveSpecialProcedures < ActiveRecord::Migration
	def change
		drop_table :cataloging_special_procedures
	end
end
