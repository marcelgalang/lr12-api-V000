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

ActiveRecord::Schema.define(version: 20170715140427) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diaper_ones", force: :cascade do |t|
    t.integer  "count"
    t.datetime "createDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diaper_twos", force: :cascade do |t|
    t.integer  "count"
    t.datetime "createDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "left_bs", force: :cascade do |t|
    t.integer  "duration"
    t.datetime "starttime"
    t.datetime "endtime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "right_bs", force: :cascade do |t|
    t.integer  "duration"
    t.datetime "starttime"
    t.datetime "endtime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_diaper_ones", force: :cascade do |t|
    t.integer "user_id"
    t.integer "diaper_one_id"
    t.index ["diaper_one_id"], name: "index_user_diaper_ones_on_diaper_one_id", using: :btree
    t.index ["user_id"], name: "index_user_diaper_ones_on_user_id", using: :btree
  end

  create_table "user_diaper_twos", force: :cascade do |t|
    t.integer "user_id"
    t.integer "diaper_twos_id"
    t.index ["diaper_twos_id"], name: "index_user_diaper_twos_on_diaper_twos_id", using: :btree
    t.index ["user_id"], name: "index_user_diaper_twos_on_user_id", using: :btree
  end

  create_table "user_left_bs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "left_b_id"
    t.index ["left_b_id"], name: "index_user_left_bs_on_left_b_id", using: :btree
    t.index ["user_id"], name: "index_user_left_bs_on_user_id", using: :btree
  end

  create_table "user_right_bs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "right_b_id"
    t.index ["right_b_id"], name: "index_user_right_bs_on_right_b_id", using: :btree
    t.index ["user_id"], name: "index_user_right_bs_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "user_diaper_ones", "diaper_ones"
  add_foreign_key "user_diaper_ones", "users"
  add_foreign_key "user_diaper_twos", "diaper_twos", column: "diaper_twos_id"
  add_foreign_key "user_diaper_twos", "users"
  add_foreign_key "user_left_bs", "left_bs"
  add_foreign_key "user_left_bs", "users"
  add_foreign_key "user_right_bs", "right_bs"
  add_foreign_key "user_right_bs", "users"
end
