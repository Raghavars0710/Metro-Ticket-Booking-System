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

ActiveRecord::Schema[7.0].define(version: 2023_07_29_165037) do
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
    t.integer "user_id"
  end

  create_table "metro_services", force: :cascade do |t|
    t.string "source"
    t.string "destination"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.time "book_time"
    t.date "book_date"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "train_id"
    t.integer "user_id"
  end

  create_table "trains", force: :cascade do |t|
    t.string "name"
    t.integer "train_number"
    t.string "source"
    t.string "destination"
    t.integer "metro_service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.integer "contact_number"
    t.text "address", default: ""
    t.string "role", default: "Passenger"
    t.string "date_of_birth"
    t.string "gender"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
