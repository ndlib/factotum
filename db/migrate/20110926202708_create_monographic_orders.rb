class CreateMonographicOrders < ActiveRecord::Migration
  def change
    create_table :monographic_orders do |t|
      t.string :format
      t.string :title
      t.string :author
      t.integer :publication_year
      t.string :publication_place
      t.string :publisher
      t.string :fund
      t.string :fund_other
      t.string :cataloging_location
      t.string :cataloging_location_other
      t.string :series
      t.string :isbn
      t.boolean :rush_order
      t.string :rush_order_reason
      t.string :rush_order_reason_other
      t.boolean :hold_for_requester
      t.string :requester
      t.boolean :added_copy
      t.boolean :added_volume
      t.string :link_source
      t.text :additional_details
      t.string :attachment_file_name
      t.string :attachment_content_type
      t.string :attachment_file_size
      t.datetime :attachment_updated_at
      t.timestamps
    end
  end
end
