class AddPrimaryIndicatorToContactInformation < ActiveRecord::Migration
  def change
	add_column :directory_contact_informations, :primary_method, :boolean, default: false
  end
end
