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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171214184409) do

  create_table "acquisition_exports", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "export_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "acquisition_orders", force: :cascade do |t|
    t.string   "format",                         limit: 255
    t.string   "title",                          limit: 1024
    t.string   "author",                         limit: 255
    t.string   "publication_year",               limit: 255
    t.string   "publisher",                      limit: 255
    t.string   "fund",                           limit: 255
    t.string   "fund_other",                     limit: 255
    t.string   "cataloging_location",            limit: 255
    t.string   "cataloging_location_other",      limit: 255
    t.string   "series",                         limit: 255
    t.string   "isbn",                           limit: 255
    t.boolean  "rush_order"
    t.string   "rush_order_reason",              limit: 255
    t.string   "rush_order_reason_other",        limit: 255
    t.boolean  "hold_for_requester"
    t.string   "requester",                      limit: 255
    t.boolean  "added_copy"
    t.boolean  "added_volume"
    t.string   "link_source",                    limit: 1024
    t.text     "additional_details",             limit: 65535
    t.string   "attachment_file_name",           limit: 255
    t.string   "attachment_content_type",        limit: 255
    t.string   "attachment_file_size",           limit: 255
    t.datetime "attachment_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "format_other",                   limit: 255
    t.boolean  "author_unknown"
    t.string   "selector_netid",                 limit: 255
    t.string   "price",                          limit: 255
    t.string   "oclc_number",                    limit: 255
    t.string   "recommended_supplier",           limit: 255
    t.string   "edition",                        limit: 255
    t.string   "creator_netid",                  limit: 255
    t.string   "price_code",                     limit: 3
    t.string   "added_copy_system_number",       limit: 255
    t.string   "added_volume_system_number",     limit: 255
    t.string   "type",                           limit: 255
    t.boolean  "publisher_unknown"
    t.boolean  "publication_year_unknown"
    t.boolean  "electronic_resource"
    t.boolean  "preorder"
    t.string   "preorder_expected_availability", limit: 255
    t.string   "purchase_type",                  limit: 255
    t.string   "supplier_info",                  limit: 255
    t.boolean  "added_volume_copy"
    t.string   "volume_copy_system_number",      limit: 255
  end

  add_index "acquisition_orders", ["cataloging_location"], name: "index_acquisition_orders_on_cataloging_location", using: :btree
  add_index "acquisition_orders", ["created_at"], name: "index_acquisition_orders_on_created_at", using: :btree
  add_index "acquisition_orders", ["creator_netid"], name: "index_acquisition_orders_on_creator_netid", using: :btree
  add_index "acquisition_orders", ["price_code"], name: "index_acquisition_orders_on_price_code", using: :btree
  add_index "acquisition_orders", ["selector_netid"], name: "index_acquisition_orders_on_selector_netid", using: :btree
  add_index "acquisition_orders", ["type"], name: "index_acquisition_orders_on_type", using: :btree

  create_table "buildings", force: :cascade do |t|
    t.string "name",        limit: 255
    t.string "search_code", limit: 255
  end

  add_index "buildings", ["search_code"], name: "index_buildings_on_search_code", using: :btree

  create_table "cataloging_entries", force: :cascade do |t|
    t.integer  "user_id",                   limit: 4
    t.date     "entry_date"
    t.date     "month_start_date"
    t.integer  "location_id",               limit: 4
    t.integer  "format_id",                 limit: 4
    t.string   "type",                      limit: 255
    t.integer  "titles_count",              limit: 4
    t.integer  "volumes_count",             limit: 4
    t.integer  "pieces_count",              limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "transfer_type_id",          limit: 4
    t.integer  "special_procedure_type_id", limit: 4
  end

  create_table "cataloging_formats", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cataloging_locations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cataloging_locations_formats", id: false, force: :cascade do |t|
    t.integer "cataloging_locations_id", limit: 4, null: false
    t.integer "cataloging_formats_id",   limit: 4, null: false
  end

  create_table "cataloging_special_procedure_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cataloging_transfer_types", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "from_location_id", limit: 4
    t.integer  "to_location_id",   limit: 4
  end

  create_table "cataloging_users", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.integer  "default_location_id", limit: 4
    t.integer  "default_format_id",   limit: 4
    t.integer  "supervisor_id",       limit: 4
    t.boolean  "admin",                           default: false
    t.string   "username",            limit: 255
    t.datetime "last_sign_in_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directory_contact_informations", force: :cascade do |t|
    t.string   "type",                limit: 255
    t.string   "contact_information", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "contactable_id",      limit: 4
    t.string   "contactable_type",    limit: 255
    t.boolean  "primary_method",                  default: false
  end

  create_table "directory_employee_ranks", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directory_employee_statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directory_employee_units", force: :cascade do |t|
    t.integer  "employee_id",            limit: 4
    t.integer  "organizational_unit_id", limit: 4
    t.boolean  "head",                               default: false
    t.string   "employee_unit_title",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "directory_employee_units", ["employee_id"], name: "index_directory_employee_units_on_employee_id", using: :btree
  add_index "directory_employee_units", ["organizational_unit_id"], name: "index_directory_employee_units_on_organizational_unit_id", using: :btree

  create_table "directory_employees", force: :cascade do |t|
    t.string   "first_name",     limit: 255
    t.string   "last_name",      limit: 255
    t.string   "netid",          limit: 255
    t.string   "photo",          limit: 255
    t.boolean  "selector",                     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rank_id",        limit: 4
    t.integer  "status_id",      limit: 4
    t.integer  "supervisor_id",  limit: 4
    t.text     "about_text",     limit: 65535
    t.date     "start_date"
    t.boolean  "hide_photo_ind"
    t.date     "leave_date"
  end

  add_index "directory_employees", ["first_name"], name: "index_directory_employees_on_first_name", using: :btree
  add_index "directory_employees", ["last_name"], name: "index_directory_employees_on_last_name", using: :btree
  add_index "directory_employees", ["status_id"], name: "index_directory_employees_on_status_id", using: :btree

  create_table "directory_organizational_units", force: :cascade do |t|
    t.integer  "parent_organizational_unit_id", limit: 4
    t.string   "name",                          limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "about_text",                    limit: 65535
    t.string   "type",                          limit: 255
  end

  create_table "directory_selector_subjects", force: :cascade do |t|
    t.integer  "employee_id", limit: 4
    t.integer  "subject_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "directory_selector_subjects", ["employee_id"], name: "index_directory_selector_subjects_on_employee_id", using: :btree
  add_index "directory_selector_subjects", ["subject_id"], name: "index_directory_selector_subjects_on_subject_id", using: :btree

  create_table "directory_subjects", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lc_class",   limit: 255
  end

  create_table "directory_unit_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hours", force: :cascade do |t|
    t.string   "type",             limit: 255
    t.string   "monday",           limit: 255
    t.string   "tuesday",          limit: 255
    t.string   "wednesday",        limit: 255
    t.string   "thursday",         limit: 255
    t.string   "friday",           limit: 255
    t.string   "saturday",         limit: 255
    t.string   "sunday",           limit: 255
    t.string   "name",             limit: 255
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "prepend_text",     limit: 255
    t.string   "append_text",      limit: 255
    t.string   "service_point_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hours", ["service_point_id"], name: "index_hours_on_service_point_id", using: :btree
  add_index "hours", ["type"], name: "index_hours_on_type", using: :btree

  create_table "maps_call_number_ranges", force: :cascade do |t|
    t.string  "collection_code",   limit: 255
    t.string  "sublibrary_code",   limit: 255
    t.string  "begin_call_number", limit: 255
    t.string  "end_call_number",   limit: 255
    t.integer "floor_map_id",      limit: 4
  end

  add_index "maps_call_number_ranges", ["collection_code", "sublibrary_code", "begin_call_number", "end_call_number"], name: "maps_call_number_ranges_index", using: :btree
  add_index "maps_call_number_ranges", ["floor_map_id"], name: "index_maps_call_number_ranges_on_floor_map_id", using: :btree

  create_table "maps_floor_maps", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.integer  "floor_number",     limit: 4
    t.string   "search_code",      limit: 255
    t.string   "map_file_name",    limit: 255
    t.string   "map_content_type", limit: 255
    t.string   "map_file_size",    limit: 255
    t.datetime "map_updated_at"
    t.integer  "building_id",      limit: 4
  end

  add_index "maps_floor_maps", ["building_id"], name: "index_maps_floor_maps_on_building_id", using: :btree
  add_index "maps_floor_maps", ["search_code"], name: "index_maps_floor_maps_on_search_code", using: :btree

  create_table "purchase_requests", force: :cascade do |t|
    t.string   "requester_netid",                   limit: 255
    t.string   "requester_email",                   limit: 255
    t.string   "requester_name",                    limit: 255
    t.string   "requester_department",              limit: 255
    t.string   "requester_phone",                   limit: 255
    t.string   "requester_affiliation",             limit: 255
    t.string   "requester_address",                 limit: 255
    t.string   "requester_notification_preference", limit: 255
    t.boolean  "hold_for_requester"
    t.boolean  "checked_online_catalog"
    t.text     "comments",                          limit: 65535
    t.string   "subject",                           limit: 255
    t.string   "format",                            limit: 255
    t.string   "author",                            limit: 255
    t.string   "title",                             limit: 255
    t.string   "isbn",                              limit: 255
    t.string   "oclc",                              limit: 255
    t.string   "year",                              limit: 255
    t.string   "publication_place",                 limit: 255
    t.string   "publisher",                         limit: 255
    t.string   "pages",                             limit: 255
    t.string   "edition",                           limit: 255
    t.string   "copies",                            limit: 255
    t.string   "pieces",                            limit: 255
    t.string   "series",                            limit: 255
    t.string   "price",                             limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refworks_password_resets", force: :cascade do |t|
    t.integer  "refworks_user_id", limit: 4
    t.string   "email_or_login",   limit: 255
    t.string   "email",            limit: 255
    t.string   "login",            limit: 255
    t.string   "token",            limit: 255
    t.boolean  "used",                         default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "refworks_password_resets", ["created_at"], name: "index_refworks_password_resets_on_created_at", using: :btree
  add_index "refworks_password_resets", ["token"], name: "index_refworks_password_resets_on_token", using: :btree
  add_index "refworks_password_resets", ["used"], name: "index_refworks_password_resets_on_used", using: :btree

  create_table "refworks_users", force: :cascade do |t|
    t.integer  "refworks_id",            limit: 4
    t.integer  "number_of_logins",       limit: 4
    t.string   "login",                  limit: 255
    t.string   "name",                   limit: 255
    t.string   "email",                  limit: 255
    t.datetime "last_login_date"
    t.datetime "refworks_creation_date"
    t.integer  "last_ref_id",            limit: 4
    t.text     "browser_info",           limit: 65535
    t.integer  "cache_version",          limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "refworks_users", ["email"], name: "index_refworks_users_on_email", using: :btree
  add_index "refworks_users", ["login"], name: "index_refworks_users_on_login", using: :btree
  add_index "refworks_users", ["refworks_id"], name: "index_refworks_users_on_refworks_id", using: :btree

  create_table "selector_funds", force: :cascade do |t|
    t.string   "netid",      limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "selector_funds", ["name"], name: "index_selector_funds_on_name", using: :btree
  add_index "selector_funds", ["netid"], name: "index_selector_funds_on_netid", using: :btree

  create_table "selectors", force: :cascade do |t|
    t.string   "netid",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "monographic",              default: false
    t.boolean  "just_say_yes",             default: false
    t.boolean  "admin"
  end

  add_index "selectors", ["netid"], name: "index_selectors_on_netid", using: :btree

  create_table "service_points", force: :cascade do |t|
    t.string   "name",                  limit: 255
    t.string   "code",                  limit: 255
    t.integer  "current_hours_id",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "notification_emails",   limit: 65535
    t.integer  "building_id",           limit: 4
    t.integer  "unit_id",               limit: 4
    t.string   "primary_contact_netid", limit: 255
    t.string   "primary_email",         limit: 255
    t.string   "primary_phone",         limit: 255
  end

  add_index "service_points", ["code"], name: "index_service_points_on_code", using: :btree
  add_index "service_points", ["primary_contact_netid"], name: "index_service_points_on_primary_contact_netid", using: :btree
  add_index "service_points", ["unit_id"], name: "index_service_points_on_unit_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name",           limit: 255
    t.string   "last_name",            limit: 255
    t.string   "display_name",         limit: 255
    t.string   "email",                limit: 255
    t.string   "username",             limit: 255
    t.integer  "sign_in_count",        limit: 4,   default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",   limit: 255
    t.string   "last_sign_in_ip",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "receive_order_emails",             default: true
    t.string   "phone",                limit: 255
    t.string   "title",                limit: 255
    t.string   "affiliation",          limit: 255
    t.string   "department",           limit: 255
    t.string   "ldapaddress",          limit: 255
  end

  add_index "users", ["username"], name: "index_users_on_username", using: :btree

end
