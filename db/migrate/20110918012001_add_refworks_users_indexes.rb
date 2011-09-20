class AddRefworksUsersIndexes < ActiveRecord::Migration
  def change
    add_index :refworks_users, :refworks_id
    add_index :refworks_users, :email
    add_index :refworks_users, :login
  end
end
