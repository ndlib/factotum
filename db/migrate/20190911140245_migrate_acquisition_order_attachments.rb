class MigrateAcquisitionOrderAttachments < ActiveRecord::Migration
  def change
    attachments = select_all('SELECT id, attachment_file_name, attachment_content_type, attachment_file_size, attachment_updated_at
                                FROM acquisition_orders
                                WHERE attachment_file_name IS NOT NULL')
    attachments.each do |attachment|
      acquistion_order_attachment = AcquisitionOrderAttachment.new(
        acquisition_order_id: attachment['id'],
        attachment_file_name: attachment['attachment_file_name'],
        attachment_content_type: attachment['attachment_content_type'],
        attachment_file_size: attachment['attachment_file_size'],
        attachment_updated_at: attachment['attachment_updated_at']
      )
      acquistion_order_attachment.save!
    end
  end
end
