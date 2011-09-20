class CreateRefworksPasswordResets < ActiveRecord::Migration
  def change
    create_table :refworks_password_resets do |t|
      t.string :email_or_login
      t.string :email
      t.string :login
      t.string :token
      t.timestamps
    end
  end
end
