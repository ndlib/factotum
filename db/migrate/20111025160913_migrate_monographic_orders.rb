class MigrateMonographicOrders < ActiveRecord::Migration
  def up
    AcquisitionOrder.update_all(:type => "MonographicOrder")
  end

  def down
  end
end
