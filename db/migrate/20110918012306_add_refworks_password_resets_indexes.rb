class AddRefworksPasswordResetsIndexes < ActiveRecord::Migration
  def change
    add_index :refworks_password_resets, :token
  end
end
