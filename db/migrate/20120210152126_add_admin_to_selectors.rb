class AddAdminToSelectors < ActiveRecord::Migration
  def change
    add_column :selectors, :admin, :boolean
  end
end
