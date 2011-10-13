class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :display_name
      t.string :email
      t.cas_authenticatable
      t.trackable
      t.timestamps
    end
  end
end
