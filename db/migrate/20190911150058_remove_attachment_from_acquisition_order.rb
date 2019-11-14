class RemoveAttachmentFromAcquisitionOrder < ActiveRecord::Migration
  def change
    remove_column :acquisition_orders, :attachment_file_name
    remove_column :acquisition_orders, :attachment_content_type
    remove_column :acquisition_orders, :attachment_file_size
    remove_column :acquisition_orders, :attachment_updated_at
  end
end
