# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111011214233) do

  create_table "monographic_orders", :force => true do |t|
    t.string   "format"
    t.string   "title"
    t.string   "author"
    t.string   "publication_year"
    t.string   "publication_place"
    t.string   "publisher"
    t.string   "fund"
    t.string   "fund_other"
    t.string   "cataloging_location"
    t.string   "cataloging_location_other"
    t.string   "series"
    t.string   "isbn"
    t.boolean  "rush_order"
    t.string   "rush_order_reason"
    t.string   "rush_order_reason_other"
    t.boolean  "hold_for_requester"
    t.string   "requester"
    t.boolean  "added_copy"
    t.boolean  "added_volume"
    t.string   "link_source"
    t.text     "additional_details"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.string   "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "format_other"
    t.boolean  "author_unknown"
    t.string   "selector_netid"
    t.string   "selector_name"
    t.string   "sublibrary"
    t.string   "collection"
    t.decimal  "price",                     :precision => 10, :scale => 2
    t.string   "oclc_number"
    t.string   "oclc_link"
    t.string   "recommended_supplier"
    t.string   "edition"
    t.string   "creator_netid"
  end

  create_table "refworks_password_resets", :force => true do |t|
    t.integer  "refworks_user_id"
    t.string   "email_or_login"
    t.string   "email"
    t.string   "login"
    t.string   "token"
    t.boolean  "used",             :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "refworks_password_resets", ["created_at"], :name => "index_refworks_password_resets_on_created_at"
  add_index "refworks_password_resets", ["token"], :name => "index_refworks_password_resets_on_token"
  add_index "refworks_password_resets", ["used"], :name => "index_refworks_password_resets_on_used"

  create_table "refworks_users", :force => true do |t|
    t.integer  "refworks_id"
    t.integer  "number_of_logins"
    t.string   "login"
    t.string   "name"
    t.string   "email"
    t.datetime "last_login_date"
    t.datetime "refworks_creation_date"
    t.integer  "last_ref_id"
    t.text     "browser_info"
    t.integer  "cache_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "refworks_users", ["email"], :name => "index_refworks_users_on_email"
  add_index "refworks_users", ["login"], :name => "index_refworks_users_on_login"
  add_index "refworks_users", ["refworks_id"], :name => "index_refworks_users_on_refworks_id"

end
