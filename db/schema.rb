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

ActiveRecord::Schema.define(version: 20170622015734) do

  create_table "kitchensions", force: :cascade do |t|
    t.string   "kit"
    t.integer  "portfolio_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "kitchensions", ["portfolio_id"], name: "index_kitchensions_on_portfolio_id"

  create_table "poimages", force: :cascade do |t|
    t.string   "imgnum"
    t.integer  "portfolio_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "pimg_file_name"
    t.string   "pimg_content_type"
    t.integer  "pimg_file_size"
    t.datetime "pimg_updated_at"
  end

  add_index "poimages", ["portfolio_id"], name: "index_poimages_on_portfolio_id"

  create_table "portfolios", force: :cascade do |t|
    t.string   "title"
    t.string   "city"
    t.text     "description1"
    t.text     "description2"
    t.integer  "user_id"
    t.integer  "portfolio_turn"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "technitions", force: :cascade do |t|
    t.string   "tech"
    t.integer  "portfolio_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "technitions", ["portfolio_id"], name: "index_technitions_on_portfolio_id"

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
