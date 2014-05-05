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

ActiveRecord::Schema.define(version: 20140505204135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "dog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["dog_id"], name: "index_comments_on_dog_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "dogs", force: true do |t|
    t.string   "name"
    t.string   "breed"
    t.string   "age"
    t.text     "image"
    t.integer  "park_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dogs", ["park_id"], name: "index_dogs_on_park_id", using: :btree
  add_index "dogs", ["user_id"], name: "index_dogs_on_user_id", using: :btree

  create_table "parks", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "leash_rule"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.string   "password_digest"
  end

end
