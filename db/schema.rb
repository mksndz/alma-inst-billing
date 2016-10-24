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

ActiveRecord::Schema.define(version: 20161024190826) do

  create_table "contacts", force: :cascade do |t|
    t.string   "name",           null: false
    t.string   "phone",          null: false
    t.string   "email",          null: false
    t.integer  "institution_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.boolean  "notify"
    t.boolean  "bill"
    t.string   "branch_campus"
    t.string   "feid"
    t.string   "pay_to"
    t.string   "pay_types"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
  end

  create_table "institutions", force: :cascade do |t|
    t.string   "name",                  null: false
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "api_key"
    t.string   "code",       limit: 12
  end

end
