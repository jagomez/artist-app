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

ActiveRecord::Schema.define(version: 20141214195452) do

  create_table "applied_opps", force: true do |t|
    t.integer  "UserID"
    t.integer  "OppID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artist_statements", force: true do |t|
    t.integer  "user_id"
    t.text     "description"
    t.text     "statement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deadlines", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "opportunity_id"
    t.string   "description"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active"
  end

  create_table "educations", force: true do |t|
    t.string   "user_id"
    t.string   "school"
    t.string   "year"
    t.string   "degree"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiences", force: true do |t|
    t.string   "user_id"
    t.string   "title"
    t.string   "year"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "image"
    t.string   "title"
    t.string   "medium"
    t.string   "year"
    t.string   "description"
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "opportunities", force: true do |t|
    t.text     "projectname"
    t.integer  "entity_id"
    t.text     "project_scope"
    t.text     "category"
    t.integer  "fee"
    t.text     "prereq"
    t.text     "deadline"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "entity_name"
    t.text     "entity_contact"
    t.integer  "entity_phone"
    t.text     "entity_email"
    t.text     "url"
    t.integer  "user_id"
    t.string   "status"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "first_name"
    t.text     "last_name"
    t.text     "website"
    t.text     "twitter"
    t.text     "address"
    t.text     "city"
    t.text     "state"
    t.text     "zip_code"
    t.text     "phone"
    t.string   "profile_image"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
