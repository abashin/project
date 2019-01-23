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

ActiveRecord::Schema.define(version: 2019_01_23_091803) do

  create_table "debts", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "patronymic"
    t.string "passport_series"
    t.string "passport_number"
    t.string "address"
    t.string "borrower_name"
    t.string "borrower_lastname"
    t.string "borrower_patronymic"
    t.string "borrower_passport_series"
    t.string "borrower_passport_number"
    t.string "borrower_address"
    t.string "debt_summ"
    t.string "date_return_debt"
    t.string "passport_institution"
    t.string "passport_date"
    t.string "borrower_passport_institution"
    t.string "borrower_passport_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rights", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "patronymic"
    t.string "passport_series"
    t.string "passport_number"
    t.string "address"
    t.string "passport_institution"
    t.string "passport_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "right_id"
    t.string "lastname"
    t.string "name"
    t.index ["right_id"], name: "index_users_on_right_id"
  end

end
