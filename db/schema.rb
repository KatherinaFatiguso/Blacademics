# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150803010526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "awards", force: :cascade do |t|
    t.string   "title"
    t.string   "organisation"
    t.string   "year_received"
    t.integer  "student_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "awards", ["student_profile_id"], name: "index_awards_on_student_profile_id", using: :btree

  create_table "cadetships", force: :cascade do |t|
    t.string   "title"
    t.string   "organisation"
    t.string   "year_commenced"
    t.string   "year_ended"
    t.integer  "student_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "cadetships", ["student_profile_id"], name: "index_cadetships_on_student_profile_id", using: :btree

  create_table "employments", force: :cascade do |t|
    t.string   "title"
    t.string   "organisation"
    t.string   "year_commenced"
    t.string   "year_ended"
    t.integer  "student_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "employments", ["student_profile_id"], name: "index_employments_on_student_profile_id", using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "internships", force: :cascade do |t|
    t.string   "title"
    t.string   "organisation"
    t.string   "year_commenced"
    t.string   "year_ended"
    t.integer  "student_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "internships", ["student_profile_id"], name: "index_internships_on_student_profile_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "scholarships", force: :cascade do |t|
    t.string   "title"
    t.string   "organisation"
    t.string   "year_received"
    t.integer  "student_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "scholarships", ["student_profile_id"], name: "index_scholarships_on_student_profile_id", using: :btree

  create_table "student_profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_pic"
    t.text     "bio"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.string   "title"
    t.string   "letters"
    t.string   "post_nominal_titles"
  end

  add_index "student_profiles", ["user_id"], name: "index_student_profiles_on_user_id", using: :btree

  create_table "university_educations", force: :cascade do |t|
    t.string   "degree"
    t.string   "field_of_study"
    t.string   "university"
    t.string   "school"
    t.string   "year_started"
    t.string   "year_ended"
    t.integer  "student_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "university_educations", ["student_profile_id"], name: "index_university_educations_on_student_profile_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "user_type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  add_foreign_key "awards", "student_profiles"
  add_foreign_key "cadetships", "student_profiles"
  add_foreign_key "employments", "student_profiles"
  add_foreign_key "internships", "student_profiles"
  add_foreign_key "scholarships", "student_profiles"
  add_foreign_key "student_profiles", "users"
  add_foreign_key "university_educations", "student_profiles"
end
