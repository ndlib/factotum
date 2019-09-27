class CreateAcquisitionOrderAttachments < ActiveRecord::Migration
  def change
    create_table :acquisition_order_attachments do |t|
      t.integer :acquisition_order_id
      t.string :attachment_file_name
      t.string :attachment_content_type
      t.string :attachment_file_size
      t.datetime :attachment_updated_at
      t.timestamps
    end
  end
end
