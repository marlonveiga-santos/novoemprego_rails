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

ActiveRecord::Schema.define(version: 2020_06_22_233451) do

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

  create_table "applicants", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_applicants_on_email", unique: true
    t.index ["reset_password_token"], name: "index_applicants_on_reset_password_token", unique: true
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "domain"
    t.string "cnpj"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string "institution"
    t.string "course"
    t.date "start_date"
    t.date "end_date"
    t.integer "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "profile_id", null: false
    t.index ["profile_id"], name: "index_educations_on_profile_id"
  end

  create_table "headhunters", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_headhunters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_headhunters_on_reset_password_token", unique: true
  end

  create_table "professions", force: :cascade do |t|
    t.string "company"
    t.string "job_role"
    t.date "start_date"
    t.date "end_date"
    t.decimal "salary"
    t.string "attributions"
    t.integer "job_area"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "profile_id", null: false
    t.index ["profile_id"], name: "index_professions_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "preferred_name"
    t.string "description"
    t.date "birth_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "applicant_id", null: false
    t.integer "gender"
    t.index ["applicant_id"], name: "index_profiles_on_applicant_id"
  end

  create_table "workspaces", force: :cascade do |t|
    t.string "name"
    t.string "preferred_name"
    t.integer "gender"
    t.text "about"
    t.date "birth_date"
    t.string "cpf"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "headhunter_id", null: false
    t.index ["headhunter_id"], name: "index_workspaces_on_headhunter_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "educations", "profiles"
  add_foreign_key "professions", "profiles"
  add_foreign_key "profiles", "applicants"
  add_foreign_key "workspaces", "headhunters"
end
