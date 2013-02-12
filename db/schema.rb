# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130212165710) do

  create_table "acquisition_exports", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "export_type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "acquisition_orders", :force => true do |t|
    t.string   "format"
    t.string   "title"
    t.string   "author"
    t.string   "publication_year"
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
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.string   "format_other"
    t.boolean  "author_unknown"
    t.string   "selector_netid"
    t.string   "price"
    t.string   "oclc_number"
    t.string   "recommended_supplier"
    t.string   "edition"
    t.string   "creator_netid"
    t.string   "price_code",                     :limit => 3
    t.string   "added_copy_system_number"
    t.string   "added_volume_system_number"
    t.string   "type"
    t.boolean  "publisher_unknown"
    t.boolean  "publication_year_unknown"
    t.boolean  "electronic_resource"
    t.boolean  "preorder"
    t.string   "preorder_expected_availability"
  end

  add_index "acquisition_orders", ["created_at"], :name => "index_monographic_orders_on_created_at"
  add_index "acquisition_orders", ["creator_netid"], :name => "index_monographic_orders_on_creator_netid"
  add_index "acquisition_orders", ["selector_netid"], :name => "index_monographic_orders_on_selector_netid"
  add_index "acquisition_orders", ["type"], :name => "index_acquisition_orders_on_type"

  create_table "hours", :force => true do |t|
    t.string   "type"
    t.string   "monday"
    t.string   "tuesday"
    t.string   "wednesday"
    t.string   "thursday"
    t.string   "friday"
    t.string   "saturday"
    t.string   "sunday"
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "prepend_text"
    t.string   "append_text"
    t.string   "service_point_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "hours", ["service_point_id"], :name => "index_hours_on_service_id"
  add_index "hours", ["type"], :name => "index_hours_on_type"

  create_table "refworks_password_resets", :force => true do |t|
    t.integer  "refworks_user_id"
    t.string   "email_or_login"
    t.string   "email"
    t.string   "login"
    t.string   "token"
    t.boolean  "used",             :default => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
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
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "refworks_users", ["email"], :name => "index_refworks_users_on_email"
  add_index "refworks_users", ["login"], :name => "index_refworks_users_on_login"
  add_index "refworks_users", ["refworks_id"], :name => "index_refworks_users_on_refworks_id"

  create_table "selector_funds", :force => true do |t|
    t.string   "netid"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "selector_funds", ["name"], :name => "index_selector_funds_on_name"
  add_index "selector_funds", ["netid"], :name => "index_selector_funds_on_netid"

  create_table "selectors", :force => true do |t|
    t.string   "netid"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.boolean  "monographic",  :default => false
    t.boolean  "just_say_yes", :default => false
    t.boolean  "admin"
  end

  add_index "selectors", ["netid"], :name => "index_selectors_on_netid"

  create_table "service_points", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "current_hours_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.text     "notification_emails"
  end

  add_index "service_points", ["code"], :name => "index_services_on_code"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "display_name"
    t.string   "email"
    t.string   "username"
    t.integer  "sign_in_count",      :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "users", ["username"], :name => "index_users_on_username"

end
