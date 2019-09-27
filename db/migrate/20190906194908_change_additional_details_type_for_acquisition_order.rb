class ChangeAdditionalDetailsTypeForAcquisitionOrder < ActiveRecord::Migration
  def up
    change_column :acquisition_orders, :additional_details, :longtext
  end

  def down
    change_column :acquisition_orders, :additional_details, :text
  end
end
