class AddTypeToAcquisitionOrder < ActiveRecord::Migration
  def change
    add_column :acquisition_orders, :type, :string
    
    add_index :acquisition_orders, :type
  end
end
