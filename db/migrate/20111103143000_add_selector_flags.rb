class AddSelectorFlags < ActiveRecord::Migration
  def change
    add_column :selectors, :monographic, :boolean, :default => false
    add_column :selectors, :just_say_yes, :boolean, :default => false
  end
end
