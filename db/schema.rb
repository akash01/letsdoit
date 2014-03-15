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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140315155822) do
=======
ActiveRecord::Schema.define(version: 20140315144514) do

  create_table "comments", force: true do |t|
    t.string   "text"
    t.integer  "postid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
>>>>>>> 35995e01716701ad4a2f355e823c9ce7994953aa

  create_table "posts", force: true do |t|
    t.string   "price"
    t.string   "range"
    t.string   "timeframe"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
