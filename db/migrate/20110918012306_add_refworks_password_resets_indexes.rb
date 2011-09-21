class AddRefworksPasswordResetsIndexes < ActiveRecord::Migration
  def change
    add_index :refworks_password_resets, :token
    add_index :refworks_password_resets, :used
    add_index :refworks_password_resets, :created_at
  end
end
