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

ActiveRecord::Schema.define(version: 2020_02_12_083105) do

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "shipping_id", null: false
    t.bigint "bland_id", null: false
    t.bigint "seller_user_id", null: false
    t.string "name", null: false
    t.text "text", null: false
    t.integer "condition", null: false
    t.integer "price", null: false
    t.integer "trading_status", null: false
    t.datetime "completed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bland_id"], name: "index_items_on_bland_id"
    t.index ["category_id"], name: "index_items_on_category_id"
    t.index ["seller_user_id"], name: "index_items_on_seller_user_id"
    t.index ["shipping_id"], name: "index_items_on_shipping_id"
  end

end
