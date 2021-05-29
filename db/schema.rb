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

ActiveRecord::Schema.define(version: 2021_05_29_033241) do

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.integer "current_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["current_user_id"], name: "index_interests_on_current_user_id"
  end

  create_table "looking_fors", force: :cascade do |t|
    t.string "name"
    t.integer "current_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["current_user_id"], name: "index_looking_fors_on_current_user_id"
  end

  create_table "orientations", force: :cascade do |t|
    t.string "name"
    t.integer "current_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["current_user_id"], name: "index_orientations_on_current_user_id"
  end

  create_table "pronouns", force: :cascade do |t|
    t.string "name"
    t.integer "current_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["current_user_id"], name: "index_pronouns_on_current_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "interests", "current_users"
  add_foreign_key "looking_fors", "current_users"
  add_foreign_key "orientations", "current_users"
  add_foreign_key "pronouns", "current_users"
end
