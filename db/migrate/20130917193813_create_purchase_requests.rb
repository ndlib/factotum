class CreatePurchaseRequests < ActiveRecord::Migration
  def change
    create_table :purchase_requests do |t|
      t.string :requester_netid
      t.string :requester_email
      t.string :requester_name
      t.string :requester_department
      t.string :requester_phone
      t.string :requester_affiliation
      t.string :requester_notification_preference
      t.boolean :hold_for_requester
      t.boolean :checked_online_catalog
      t.text :comments
      t.string :subject
      t.string :format
      t.string :author
      t.string :title
      t.string :isbn
      t.string :year
      t.string :publication_place
      t.string :publisher
      t.string :pages
      t.string :edition
      t.string :copies
      t.string :pieces
      t.string :series
      t.string :price
      t.timestamps
    end
  end
end
