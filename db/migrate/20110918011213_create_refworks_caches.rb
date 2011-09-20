class CreateRefworksCaches < ActiveRecord::Migration
  def change
    create_table :refworks_caches do |t|
      t.integer :refworks_id
      t.integer :number_of_logins
      t.string :login
      t.string :name
      t.string :email
      t.datetime :last_login_date
      t.datetime :refworks_creation_date
      t.integer :last_ref_id
      t.text :browser_info
      t.integer :cache_version
      t.timestamps
    end
  end
end
