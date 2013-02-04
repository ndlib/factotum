class ChangeServiceToServicePoints < ActiveRecord::Migration
  def up
    rename_table :services, :service_points

    rename_column :hours, :service_id, :service_point_id
  end

  def down
    rename_table :service_points, :services

    rename_column :hours, :service_point_id, :service_id
  end
end
