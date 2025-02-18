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

ActiveRecord::Schema.define(version: 20190705011739) do

  create_table "likes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "song_id"
    t.string   "comment"
    t.integer  "user_id"
  end

  add_index "likes", ["song_id"], name: "index_likes_on_song_id"
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "ratings", force: :cascade do |t|
    t.decimal  "star",       precision: 2, scale: 1
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "song_id"
    t.integer  "user_id"
  end

  add_index "ratings", ["song_id"], name: "index_ratings_on_song_id"
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id"

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.string   "artist"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.date     "broadcast_date"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
