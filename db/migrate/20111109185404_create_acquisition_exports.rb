class CreateAcquisitionExports < ActiveRecord::Migration
  def change
    create_table :acquisition_exports do |t|
      t.date :start_date
      t.date :end_date
      t.string :export_type
      t.timestamps
    end
  end
end
