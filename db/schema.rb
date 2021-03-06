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

ActiveRecord::Schema.define(version: 20161214111626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "offer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offer_id"], name: "index_comments_on_offer_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "offers", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "menu"
    t.date     "date"
    t.string   "image"
    t.float    "price"
    t.string   "cuisine"
    t.integer  "max_seats"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "city"
    t.float    "latitude"
    t.float    "longitude"
    t.index ["user_id"], name: "index_offers_on_user_id", using: :btree
  end

  create_table "offers_users", id: false, force: :cascade do |t|
    t.integer "offer_id", null: false
    t.integer "user_id",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "image"
  end

  add_foreign_key "comments", "offers"
  add_foreign_key "comments", "users"
  add_foreign_key "offers", "users"
end
