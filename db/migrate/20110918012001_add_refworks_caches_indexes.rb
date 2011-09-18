class AddRefworksCachesIndexes < ActiveRecord::Migration
  def change
    add_index :refworks_caches, :refworks_id
    add_index :refworks_caches, :email
  end
end
