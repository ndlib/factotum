class AddAdditionalFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :title, :string
    add_column :users, :affiliation, :string
    add_column :users, :department, :string
    add_column :users, :ldapaddress, :string
  end
end
