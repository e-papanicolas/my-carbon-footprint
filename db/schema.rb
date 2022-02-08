# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_08_182417) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "electricity_histories", force: :cascade do |t|
    t.string "date"
    t.string "country"
    t.string "state"
    t.integer "electricity_value"
    t.float "carbon_lb"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_electricity_histories_on_user_id"
  end

  create_table "flight_histories", force: :cascade do |t|
    t.string "date"
    t.integer "passengers"
    t.string "departure"
    t.string "destination"
    t.float "carbon_lb"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_flight_histories_on_user_id"
  end

  create_table "shipping_histories", force: :cascade do |t|
    t.string "date"
    t.integer "weight"
    t.integer "distance"
    t.string "method"
    t.float "carbon_lb"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_shipping_histories_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicle_histories", force: :cascade do |t|
    t.string "date"
    t.integer "distance_value"
    t.string "vehicle_make"
    t.string "vehicle_model"
    t.integer "vehicle_year"
    t.float "carbon_lb"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_vehicle_histories_on_user_id"
  end

  add_foreign_key "electricity_histories", "users"
  add_foreign_key "flight_histories", "users"
  add_foreign_key "shipping_histories", "users"
  add_foreign_key "vehicle_histories", "users"
end
