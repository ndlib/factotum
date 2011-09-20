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

ActiveRecord::Schema.define(:version => 20110918012306) do

  create_table "refworks_caches", :force => true do |t|
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

  add_index "refworks_caches", ["email"], :name => "index_refworks_caches_on_email"
  add_index "refworks_caches", ["refworks_id"], :name => "index_refworks_caches_on_refworks_id"

  create_table "refworks_password_resets", :force => true do |t|
    t.string   "email"
    t.text     "login_ids"
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "refworks_password_resets", ["token"], :name => "index_refworks_password_resets_on_token"

end
