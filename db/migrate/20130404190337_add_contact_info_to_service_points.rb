class AddContactInfoToServicePoints < ActiveRecord::Migration
  def up
    add_column :service_points, :unit_id, :integer
    add_column :service_points, :primary_contact_netid, :string
    add_column :service_points, :primary_email, :string
    add_column :service_points, :primary_phone, :string

    add_index :service_points, :unit_id
    add_index :service_points, :primary_contact_netid
  end
  def down
    remove_index :service_points, :unit_id
    remove_index :service_points, :primary_contact_netid
    
    remove_column :service_points, :unit_id
    remove_column :service_points, :primary_contact_netid
    remove_column :service_points, :primary_email
    remove_column :service_points, :primary_phone
  end
end
