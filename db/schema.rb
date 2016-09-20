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

ActiveRecord::Schema.define(version: 20160920191040) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adoptions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "tree_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "adoptions", ["tree_id"], name: "index_adoptions_on_tree_id", using: :btree
  add_index "adoptions", ["user_id"], name: "index_adoptions_on_user_id", using: :btree

  create_table "donations", force: :cascade do |t|
    t.integer  "tree_id"
    t.integer  "location_id"
    t.string   "comment"
    t.integer  "amount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "food_id"
    t.integer  "user_id"
    t.string   "tree_list"
  end

  add_index "donations", ["food_id"], name: "index_donations_on_food_id", using: :btree
  add_index "donations", ["location_id"], name: "index_donations_on_location_id", using: :btree
  add_index "donations", ["tree_id"], name: "index_donations_on_tree_id", using: :btree
  add_index "donations", ["user_id"], name: "index_donations_on_user_id", using: :btree

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.string   "icon"
    t.boolean  "adoptable",  default: false
    t.boolean  "visible",    default: true
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "description"
    t.string   "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer  "note_type"
    t.integer  "tree_id"
    t.string   "comment"
    t.string   "picture"
    t.integer  "rating"
    t.integer  "timing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "amount"
  end

  add_index "notes", ["user_id"], name: "index_notes_on_user_id", using: :btree

  create_table "trees", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "description"
    t.string   "address"
    t.boolean  "public"
    t.boolean  "dead",        default: false
    t.integer  "rating"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "food_id"
    t.integer  "owner"
  end

  add_index "trees", ["food_id"], name: "index_trees_on_food_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "neighborhood"
    t.boolean  "active",                      default: true
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "hashed_authentication_token"
    t.integer  "role",                        default: 3
  end

end
