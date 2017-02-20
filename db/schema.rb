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

ActiveRecord::Schema.define(version: 20170220211028) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
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

  create_table "addresses", force: true do |t|
    t.string   "primary_address"
    t.string   "secondary_address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.integer  "influencer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "country"
  end

  add_index "addresses", ["influencer_id"], name: "index_addresses_on_influencer_id", using: :btree

  create_table "admin_users", force: true do |t|
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

  create_table "brands", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brands_categories", force: true do |t|
    t.integer "brand_id"
    t.integer "category_id"
  end

  add_index "brands_categories", ["brand_id"], name: "index_brands_categories_on_brand_id", using: :btree
  add_index "brands_categories", ["category_id"], name: "index_brands_categories_on_category_id", using: :btree

  create_table "campaigns", force: true do |t|
    t.integer  "brand_id"
    t.string   "contract_num"
    t.string   "campaign_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "campaigns", ["brand_id"], name: "index_campaigns_on_brand_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
  end

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "influencers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "worked_with_mediatrix"
    t.integer  "age"
    t.boolean  "gender"
    t.integer  "ethnicity"
    t.string   "kids_age_range_list"
    t.string   "pet_list"
    t.boolean  "alcohol_brand_friendly"
    t.boolean  "vlogger"
    t.boolean  "explicit_content"
    t.boolean  "brand_safe_content"
    t.text     "brand_exclusives"
    t.boolean  "fubr"
    t.text     "cpa_compensation_basics"
    t.boolean  "staff_pick"
    t.boolean  "licensing_included"
    t.integer  "primary_language"
  end

  create_table "platform_accounts", force: true do |t|
    t.integer  "influencer_id"
    t.integer  "publishing_plaform_id"
    t.integer  "account_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "platform_accounts", ["influencer_id"], name: "index_platform_accounts_on_influencer_id", using: :btree
  add_index "platform_accounts", ["publishing_plaform_id"], name: "index_platform_accounts_on_publishing_plaform_id", using: :btree

  create_table "platform_campaigns", force: true do |t|
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "campaign_id"
    t.integer  "type"
    t.integer  "clicks"
    t.integer  "comments_count"
    t.integer  "conversions"
    t.integer  "facebook_shares"
    t.integer  "twitter_shares"
    t.integer  "pins_count"
    t.datetime "date_live"
    t.integer  "num_views"
    t.integer  "likes"
    t.integer  "shares"
    t.integer  "num_posts"
    t.integer  "engagement"
    t.integer  "snaps"
    t.integer  "opens"
    t.integer  "retweets"
    t.integer  "publishing_platform_id"
  end

  add_index "platform_campaigns", ["brand_id"], name: "index_platform_campaigns_on_brand_id", using: :btree
  add_index "platform_campaigns", ["campaign_id"], name: "index_platform_campaigns_on_campaign_id", using: :btree
  add_index "platform_campaigns", ["publishing_platform_id"], name: "index_platform_campaigns_on_publishing_platform_id", using: :btree

  create_table "publishing_platforms", force: true do |t|
    t.string   "name"
    t.integer  "subscriber_count"
    t.integer  "sponsorship_rate"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.string   "url"
    t.integer  "monthly_posts"
    t.integer  "monthly_page_views"
    t.integer  "monthly_unique_visitor"
    t.integer  "avg_views"
    t.integer  "rate_dedicated"
    t.integer  "rate_integrated"
    t.integer  "followers_count"
    t.string   "handle"
    t.integer  "engage_rate"
    t.integer  "avg_opens"
    t.integer  "avg_screenshots"
  end

  create_table "users", force: true do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
