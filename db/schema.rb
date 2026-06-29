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

ActiveRecord::Schema[8.1].define(version: 2026_06_29_172504) do
  create_table "consignment_products", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "brand"
    t.string "category"
    t.decimal "commission_rate", precision: 5, scale: 2, null: false
    t.datetime "created_at", null: false
    t.string "description"
    t.string "image_url"
    t.json "metadata"
    t.string "name", null: false
    t.string "registered_by", null: false
    t.decimal "sale_price", precision: 10, scale: 2, null: false
    t.string "sku", null: false
    t.integer "status", default: 0
    t.integer "stock", default: 0
    t.bigint "supplier_id", null: false
    t.string "unit"
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_consignment_products_on_supplier_id"
  end

  create_table "suppliers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "bank_account"
    t.string "bank_name"
    t.string "clabe"
    t.datetime "created_at", null: false
    t.decimal "default_commission_rate", precision: 5, scale: 2
    t.string "email", null: false
    t.json "metadata"
    t.string "name", null: false
    t.string "phone_number"
    t.string "registered_by", null: false
    t.string "rfc"
    t.integer "status", default: 0
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "reset_password_sent_at"
    t.string "reset_password_token"
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "consignment_products", "suppliers"
end
