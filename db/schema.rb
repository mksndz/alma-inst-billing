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

ActiveRecord::Schema.define(version: 20161025112226) do

  create_table "contacts", force: :cascade do |t|
    t.string   "phone",          null: false
    t.string   "email",          null: false
    t.integer  "institution_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "branch_campus"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
  end

  create_table "institutions", force: :cascade do |t|
    t.string   "name",                                          null: false
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "api_key"
    t.string   "code",               limit: 12
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "encrypted_password",            default: "",    null: false
    t.boolean  "god",                           default: false
  end

  create_table "integration_configs", force: :cascade do |t|
    t.integer  "institution_id"
    t.integer  "integration_id"
    t.text     "config"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "integration_configs", ["institution_id"], name: "index_integration_configs_on_institution_id"
  add_index "integration_configs", ["integration_id"], name: "index_integration_configs_on_integration_id"

  create_table "integrations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "api_key"
  end

end
