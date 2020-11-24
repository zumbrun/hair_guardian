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

ActiveRecord::Schema.define(version: 2020_11_17_162035) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.text "last_name"
    t.text "first_name"
    t.text "street_address"
    t.text "city"
    t.text "state"
    t.text "payment_status"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "caps", force: :cascade do |t|
    t.string "serial_number"
    t.float "circumference"
    t.float "ear_ear_top"
    t.float "ear_ear_base"
    t.float "nose_nape"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_caps_on_user_id"
  end

  create_table "data", force: :cascade do |t|
    t.float "temp1"
    t.float "temp2"
    t.float "temp3"
    t.float "flow_rate"
    t.float "rail_power"
    t.float "battery_power"
    t.datetime "tx_time"
    t.integer "cap_id", null: false
    t.integer "device_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cap_id"], name: "index_data_on_cap_id"
    t.index ["device_id"], name: "index_data_on_device_id"
  end

  create_table "devices", force: :cascade do |t|
    t.string "serial_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drugs", force: :cascade do |t|
    t.string "generic_name"
    t.string "brand_name"
    t.string "dosage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drugs_treatments", force: :cascade do |t|
    t.integer "drug_id", null: false
    t.integer "treatment_id", null: false
    t.index ["drug_id"], name: "index_drugs_treatments_on_drug_id"
    t.index ["treatment_id"], name: "index_drugs_treatments_on_treatment_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "age"
    t.string "gender"
    t.string "race"
    t.string "ethnicity"
    t.string "clinic_name"
    t.string "clinic_address"
    t.text "dx"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "stage"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "treatments", force: :cascade do |t|
    t.string "regimen"
    t.string "frequency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "treatments_users", force: :cascade do |t|
    t.integer "treatment_id", null: false
    t.integer "user_id", null: false
    t.index ["treatment_id"], name: "index_treatments_users_on_treatment_id"
    t.index ["user_id"], name: "index_treatments_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "password_digest"
    t.string "username"
    t.integer "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "caps", "users"
  add_foreign_key "data", "caps"
  add_foreign_key "data", "devices"
  add_foreign_key "drugs_treatments", "drugs"
  add_foreign_key "drugs_treatments", "treatments"
  add_foreign_key "profiles", "users"
  add_foreign_key "treatments_users", "treatments"
  add_foreign_key "treatments_users", "users"
end
