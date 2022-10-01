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

ActiveRecord::Schema[7.0].define(version: 2022_09_30_221751) do
  create_table "comments", force: :cascade do |t|
    t.string "author"
    t.text "body"
    t.integer "track_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["track_id"], name: "index_comments_on_track_id"
  end

  create_table "driverbies", force: :cascade do |t|
    t.string "newdriverby"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "driverrus", force: :cascade do |t|
    t.string "newdriverru"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "newdriver"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "semitrailers", force: :cascade do |t|
    t.string "newsemitrailer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stranas", force: :cascade do |t|
    t.string "newstrana"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.string "pl"
    t.string "truck_by"
    t.string "driver_by"
    t.string "perecep"
    t.string "truck_rus"
    t.string "driver_rus"
    t.string "semi_trailer"
    t.string "country"
    t.string "pl2"
    t.string "perecep2"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "truckbies", force: :cascade do |t|
    t.string "newtruckby"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "truckpls", force: :cascade do |t|
    t.string "newtruckpl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "truckrus", force: :cascade do |t|
    t.string "newtruckru"
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
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "comments", "tracks"
end
