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

ActiveRecord::Schema.define(version: 20150921055659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "audiences", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "impressions", force: :cascade do |t|
    t.string   "impressionable_type"
    t.integer  "impressionable_id"
    t.integer  "user_id"
    t.string   "controller_name"
    t.string   "action_name"
    t.string   "view_name"
    t.string   "request_hash"
    t.string   "ip_address"
    t.string   "session_hash"
    t.text     "message"
    t.text     "referrer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "impressions", ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index", using: :btree
  add_index "impressions", ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index", using: :btree
  add_index "impressions", ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index", using: :btree
  add_index "impressions", ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index", using: :btree
  add_index "impressions", ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index", using: :btree
  add_index "impressions", ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index", using: :btree
  add_index "impressions", ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index", using: :btree
  add_index "impressions", ["user_id"], name: "index_impressions_on_user_id", using: :btree

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

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "description"
    t.string   "category"
    t.string   "location"
    t.string   "work_type"
    t.float    "salary"
    t.integer  "organisation_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "jobs", ["organisation_id"], name: "index_jobs_on_organisation_id", using: :btree

  create_table "listing_audiences", force: :cascade do |t|
    t.integer  "listing_id"
    t.integer  "audience_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "listing_audiences", ["audience_id"], name: "index_listing_audiences_on_audience_id", using: :btree
  add_index "listing_audiences", ["listing_id"], name: "index_listing_audiences_on_listing_id", using: :btree

  create_table "listings", force: :cascade do |t|
    t.string   "listing_type"
    t.string   "title"
    t.text     "short_description"
    t.text     "long_description"
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.string   "website"
    t.string   "ticket_required"
    t.string   "official_hastag"
    t.string   "facebook_url"
    t.string   "twitter_handle"
    t.string   "instagram_handle"
    t.string   "job_category"
    t.string   "job_type"
    t.string   "salary"
    t.integer  "organisation_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "street_address"
    t.string   "suburb"
    t.string   "state"
    t.string   "postcode"
    t.string   "status",            default: "draft"
    t.integer  "impressions_count", default: 0
    t.string   "company_name"
    t.string   "ticket_website"
    t.string   "image"
    t.datetime "expired_at"
  end

  add_index "listings", ["organisation_id"], name: "index_listings_on_organisation_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.integer  "from",                            null: false
    t.integer  "to",                              null: false
    t.text     "long_message"
    t.string   "status",       default: "unread"
    t.string   "attachment"
    t.integer  "user_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "organisations", force: :cascade do |t|
    t.string   "company_name"
    t.string   "department"
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "suburb"
    t.string   "state"
    t.string   "postcode"
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.string   "website"
    t.string   "logo"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
  end

  add_index "organisations", ["user_id"], name: "index_organisations_on_user_id", using: :btree

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

  create_table "skills", force: :cascade do |t|
    t.string   "skill"
    t.integer  "student_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "skills", ["student_profile_id"], name: "index_skills_on_student_profile_id", using: :btree

  create_table "student_profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_pic"
    t.text     "bio"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "user_id"
    t.string   "title"
    t.string   "letters"
    t.string   "post_nominal_titles"
    t.text     "work_history"
    t.string   "resume"
    t.string   "full_name"
    t.integer  "connections",         default: [],              array: true
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
  add_foreign_key "jobs", "organisations"
  add_foreign_key "listing_audiences", "audiences"
  add_foreign_key "listing_audiences", "listings"
  add_foreign_key "listings", "organisations"
  add_foreign_key "messages", "users"
  add_foreign_key "organisations", "users"
  add_foreign_key "scholarships", "student_profiles"
  add_foreign_key "skills", "student_profiles"
  add_foreign_key "student_profiles", "users"
  add_foreign_key "university_educations", "student_profiles"
end
