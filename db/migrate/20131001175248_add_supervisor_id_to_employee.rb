class AddSupervisorIdToEmployee < ActiveRecord::Migration
  def change
	add_column :directory_employees, :supervisor_id, :integer	
  end
end
