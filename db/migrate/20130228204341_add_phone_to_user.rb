class AddPhoneToUser < ActiveRecord::Migration
  def up
    add_column :users, :phone, :string
  end

  def down
    drop_column :users, :phone
  end
end
