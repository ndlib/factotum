class CreateRefworksPasswordResets < ActiveRecord::Migration
  def change
    create_table :refworks_password_resets do |t|
      t.string :email_address
      t.text :login_ids
      t.string :token
      t.timestamps
    end
  end
end
