class AddServicePointAdminEmails < ActiveRecord::Migration
  def up
    add_column :service_points, :notification_emails, :text
  end

  def down
    remove_column :service_points, :notification_emails
  end
end
