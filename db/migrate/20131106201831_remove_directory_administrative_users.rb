class RemoveDirectoryAdministrativeUsers < ActiveRecord::Migration
  def change
    drop_table :directory_administrative_users
  end
end
