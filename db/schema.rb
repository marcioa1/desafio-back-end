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

ActiveRecord::Schema.define(version: 2019_10_21_205415) do

  create_table "transaction_types", force: :cascade do |t|
    t.integer "code"
    t.string "description"
    t.string "in_out"
    t.string "signal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "transaction_type_id"
    t.datetime "date"
    t.decimal "value"
    t.string "cpf"
    t.string "card"
    t.string "store_owner"
    t.string "store_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["transaction_type_id"], name: "index_transactions_on_transaction_type_id"
  end

end
