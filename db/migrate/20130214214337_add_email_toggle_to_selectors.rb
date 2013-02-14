class AddEmailToggleToSelectors < ActiveRecord::Migration
  def change
    add_column :users, :receive_order_emails, :boolean, default: true
  end
end
