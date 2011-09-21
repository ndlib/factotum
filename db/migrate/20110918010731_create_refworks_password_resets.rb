class CreateRefworksPasswordResets < ActiveRecord::Migration
  def change
    create_table :refworks_password_resets do |t|
      t.integer :refworks_user_id
      t.string :email_or_login
      t.string :email
      t.string :login
      t.string :token
      t.boolean :used, :default => false
      t.timestamps
    end
  end
end
