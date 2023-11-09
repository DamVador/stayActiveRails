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

ActiveRecord::Schema[7.0].define(version: 2023_11_09_090852) do
  create_table "run_owners", force: :cascade do |t|
    t.integer "run_id"
    t.integer "user_id"
    t.index ["run_id"], name: "index_run_owners_on_run_id"
    t.index ["user_id"], name: "index_run_owners_on_user_id"
  end

  create_table "run_participants", force: :cascade do |t|
    t.integer "run_id"
    t.integer "user_id"
    t.index ["run_id"], name: "index_run_participants_on_run_id"
    t.index ["user_id"], name: "index_run_participants_on_user_id"
  end

  create_table "runs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.decimal "latitude", precision: 10, scale: 6
    t.decimal "longitude", precision: 10, scale: 6
    t.integer "accepted_people_number"
    t.decimal "distance", precision: 4, scale: 1
    t.integer "difficulty"
    t.datetime "date_time"
    t.integer "owner_id"
    t.integer "participant_ids"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "runs", "users", column: "owner_id"
end
