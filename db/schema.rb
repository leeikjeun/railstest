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

ActiveRecord::Schema.define(version: 20170411160153) do

  create_table "menus", force: :cascade do |t|
    t.string   "name",       limit: 32, null: false
    t.integer  "price"
    t.integer  "key"
    t.datetime "created_at"
  end

  create_table "product_infos", force: :cascade do |t|
    t.string   "name",       limit: 32, null: false
    t.integer  "price"
    t.boolean  "rogoCU"
    t.boolean  "rogoGS"
    t.boolean  "rogoSeven"
    t.string   "img"
    t.datetime "created_at"
  end

  create_table "restaulant_infos", force: :cascade do |t|
    t.string   "name",              limit: 32, null: false
    t.string   "img"
    t.string   "location"
    t.string   "address"
    t.string   "phone"
    t.string   "business_hours"
    t.integer  "between_price_min"
    t.integer  "between_price_max"
    t.datetime "created_at"
  end

end
