class CreateDirectoryContactInformations < ActiveRecord::Migration
  def change
    create_table :directory_contact_informations do |t|
    	t.string :type
    	t.integer :employee_id
    	t.integer :organizational_unit_id
    	t.string :contact_information
     	t.timestamps
    end
  end
end
