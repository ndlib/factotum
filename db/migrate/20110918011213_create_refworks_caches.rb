class CreateRefworksCaches < ActiveRecord::Migration
  def change
    create_table :refworks_caches do |t|
      t.string :login
      t.integer :refworks_id
      t.string :email
      t.string :name
      t.integer :cache_version
      t.timestamps
    end
  end
end
