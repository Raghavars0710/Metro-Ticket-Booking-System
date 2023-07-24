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

ActiveRecord::Schema[7.0].define(version: 2023_07_24_073517) do
  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "contact_number"
    t.text "address", default: ""
    t.date "date_of_birth"
    t.integer "gender"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "metro_services", force: :cascade do |t|
    t.integer "source"
    t.integer "destination"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.datetime "book_time"
    t.datetime "book_date"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trains", force: :cascade do |t|
    t.string "name"
    t.integer "train_number"
    t.string "source"
    t.string "destination"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "metro_service_id"
    t.index ["metro_service_id"], name: "index_trains_on_metro_service_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "contact_number"
    t.text "address", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.integer "role", default: 0
    t.date "date_of_birth"
    t.integer "gender"
  end

  create_table "welcomes", force: :cascade do |t|
    t.string "username"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.index ["email"], name: "index_welcomes_on_email", unique: true
    t.index ["reset_password_token"], name: "index_welcomes_on_reset_password_token", unique: true
  end

  add_foreign_key "members", "users"
  add_foreign_key "trains", "metro_services"
end
