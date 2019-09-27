class AddIndexToAcquisitionOrderAttachments < ActiveRecord::Migration
  def change
    add_index :acquisition_order_attachments, :acquisition_order_id
  end
end
