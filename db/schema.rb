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

ActiveRecord::Schema.define(version: 20150327174441) do

  create_table "buildings", force: :cascade do |t|
    t.string   "name",        limit: 35
    t.string   "label",       limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "floor_areas", force: :cascade do |t|
    t.string   "coords",       limit: 750
    t.integer  "floorplan_id", limit: 4
    t.string   "shape",        limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "floor_areas", ["floorplan_id"], name: "index_floor_areas_on_floorplan_id", using: :btree

  create_table "floorplans", force: :cascade do |t|
    t.string   "name",        limit: 60
    t.string   "label",       limit: 255
    t.string   "sublabel",    limit: 255
    t.integer  "building_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "floorplans", ["building_id"], name: "index_floorplans_on_building_id", using: :btree

  create_table "rooms", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "room_number",        limit: 255
    t.string   "label",              limit: 255
    t.string   "sublabel",           limit: 255
    t.integer  "floorplan_id",       limit: 4
    t.boolean  "naming_opportunity", limit: 1
    t.boolean  "nameable",           limit: 1
    t.integer  "dollar_amount",      limit: 4
    t.boolean  "pending_sale",       limit: 1
    t.boolean  "carrel",             limit: 1
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "rooms", ["floorplan_id"], name: "index_rooms_on_floorplan_id", using: :btree

  add_foreign_key "floor_areas", "floorplans"
  add_foreign_key "floorplans", "buildings"
  add_foreign_key "rooms", "floorplans"
end
