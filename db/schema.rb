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

ActiveRecord::Schema.define(version: 2021_05_29_084300) do

  create_table "categories", force: :cascade do |t|
    t.integer "users_id", null: false
    t.integer "politics_id", null: false
    t.integer "pronouns_id", null: false
    t.integer "status_id", null: false
    t.integer "identities_id", null: false
    t.integer "looking_fors_id", null: false
    t.integer "interests_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["identities_id"], name: "index_categories_on_identities_id"
    t.index ["interests_id"], name: "index_categories_on_interests_id"
    t.index ["looking_fors_id"], name: "index_categories_on_looking_fors_id"
    t.index ["politics_id"], name: "index_categories_on_politics_id"
    t.index ["pronouns_id"], name: "index_categories_on_pronouns_id"
    t.index ["status_id"], name: "index_categories_on_status_id"
    t.index ["users_id"], name: "index_categories_on_users_id"
  end

  create_table "identities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "looking_fors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "liked_id"
    t.integer "liker_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "politics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pronouns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "categories", "identities", column: "identities_id"
  add_foreign_key "categories", "interests", column: "interests_id"
  add_foreign_key "categories", "looking_fors", column: "looking_fors_id"
  add_foreign_key "categories", "politics", column: "politics_id"
  add_foreign_key "categories", "pronouns", column: "pronouns_id"
  add_foreign_key "categories", "statuses"
  add_foreign_key "categories", "users", column: "users_id"
end
