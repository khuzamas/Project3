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

ActiveRecord::Schema.define(version: 2019_04_25_063858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fridges", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "temp"
    t.string "room"
  end

  create_table "fridges_items", id: false, force: :cascade do |t|
    t.bigint "fridge_id", null: false
    t.bigint "item_id", null: false
  end

  create_table "fridges_options", id: false, force: :cascade do |t|
    t.bigint "fridge_id", null: false
    t.bigint "option_id", null: false
  end

  create_table "fridges_users", id: false, force: :cascade do |t|
    t.integer "fridge_id"
    t.integer "user_id"
  end

  create_table "infos", force: :cascade do |t|
    t.integer "temp"
    t.string "room"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "stock"
    t.string "category"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "exp_date"
    t.integer "fridge_id"
  end

  create_table "items_options", id: false, force: :cascade do |t|
    t.bigint "item_id", null: false
    t.bigint "option_id", null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string "tiltle"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.boolean "Completed", default: false
  end

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "fridge_id"
    t.integer "list_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
