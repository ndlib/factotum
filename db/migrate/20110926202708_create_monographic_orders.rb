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
      t.string :cataloging_location
      t.string :series
      t.string :isbn
      t.boolean :rush_order
      t.string :rush_order_reason
      t.boolean :hold_for_requester
      t.string :requester
      t.boolean :added_copy
      t.boolean :added_volume
      t.string :link_source
      t.text :additional_details
      t.timestamps
    end
  end
end
