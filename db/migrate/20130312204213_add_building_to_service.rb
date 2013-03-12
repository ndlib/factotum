class AddBuildingToService < ActiveRecord::Migration
  def change
    add_column :service_points, :building_id, :integer
  end
end
