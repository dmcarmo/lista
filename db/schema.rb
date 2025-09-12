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

ActiveRecord::Schema[8.0].define(version: 2025_09_12_223959) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "doctor_profile_specialties", force: :cascade do |t|
    t.boolean "sex_therapist"
    t.bigint "doctor_profile_id", null: false
    t.bigint "specialty_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_profile_id"], name: "index_doctor_profile_specialties_on_doctor_profile_id"
    t.index ["specialty_id"], name: "index_doctor_profile_specialties_on_specialty_id"
  end

  create_table "doctor_profile_surgeries", force: :cascade do |t|
    t.bigint "doctor_profile_id", null: false
    t.bigint "surgery_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_profile_id"], name: "index_doctor_profile_surgeries_on_doctor_profile_id"
    t.index ["surgery_id"], name: "index_doctor_profile_surgeries_on_surgery_id"
  end

  create_table "doctor_profiles", force: :cascade do |t|
    t.string "license_number"
    t.boolean "online"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "district"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "service_id", null: false
    t.text "comment"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_reviews_on_service_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "service_locations", force: :cascade do |t|
    t.bigint "service_id", null: false
    t.bigint "location_id", null: false
    t.string "price_range"
    t.integer "system"
    t.string "agreements", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_service_locations_on_location_id"
    t.index ["service_id"], name: "index_service_locations_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "profilable_type", null: false
    t.bigint "profilable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profilable_type", "profilable_id"], name: "index_services_on_profilable"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surgeries", force: :cascade do |t|
    t.string "name"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "doctor_profile_specialties", "doctor_profiles"
  add_foreign_key "doctor_profile_specialties", "specialties"
  add_foreign_key "doctor_profile_surgeries", "doctor_profiles"
  add_foreign_key "doctor_profile_surgeries", "surgeries"
  add_foreign_key "reviews", "services"
  add_foreign_key "reviews", "users"
  add_foreign_key "service_locations", "locations"
  add_foreign_key "service_locations", "services"
end
