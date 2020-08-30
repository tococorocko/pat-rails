# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_30_151808) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "sort_order"
    t.bigint "language_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["language_id"], name: "index_address_categories_on_language_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.string "extra"
    t.string "street"
    t.integer "postcode"
    t.string "city"
    t.string "phone"
    t.string "email"
    t.string "website"
    t.bigint "address_category_id", null: false
    t.bigint "severity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_category_id"], name: "index_addresses_on_address_category_id"
    t.index ["severity_id"], name: "index_addresses_on_severity_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "question_categories", force: :cascade do |t|
    t.string "name"
    t.text "info"
    t.integer "sort_order"
    t.bigint "language_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["language_id"], name: "index_question_categories_on_language_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "name"
    t.text "question_text"
    t.integer "sort_order"
    t.integer "valuation_factor"
    t.bigint "question_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_category_id"], name: "index_questions_on_question_category_id"
  end

  create_table "severities", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "address_categories", "languages"
  add_foreign_key "addresses", "address_categories"
  add_foreign_key "addresses", "severities"
  add_foreign_key "question_categories", "languages"
  add_foreign_key "questions", "question_categories"
end
