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

ActiveRecord::Schema.define(version: 20150618041845) do

  create_table "invites", force: true do |t|
    t.integer  "user_id"
    t.integer  "picnic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "food"
  end

  add_index "invites", ["picnic_id"], name: "index_invites_on_picnic_id"
  add_index "invites", ["user_id"], name: "index_invites_on_user_id"

  create_table "photo_galleries", force: true do |t|
    t.integer  "picnic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.string   "image"
    t.integer  "photo_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "picnics", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.datetime "time"
    t.text     "description"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "host_id"
    t.string   "image"
    t.date     "just_date"
    t.integer  "photo_gallery_id"
  end

  create_table "subscriptions", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "provider"
    t.string   "uid"
    t.string   "image"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
