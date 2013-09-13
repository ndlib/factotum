class CreateCatalogingUsers < ActiveRecord::Migration
  def change
    create_table :cataloging_users do |t|
      t.string :name
      t.integer :default_location_id
      t.integer :default_format_id
      t.integer :supervisor_id
      t.boolean :admin, :default => false

      ## CAS Authenticatable
      t.string :username

      ## Trackable
      t.datetime :last_sign_in_at

      t.timestamps	
    end
  end
end
