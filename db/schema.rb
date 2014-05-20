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

ActiveRecord::Schema.define(version: 20140520054949) do

  create_table "article_images", force: true do |t|
    t.string   "caption"
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "price"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "comment"
    t.text     "body"
    t.integer  "single_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["single_id"], name: "index_comments_on_single_id", using: :btree

  create_table "pictures", force: true do |t|
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "pictures", ["article_id"], name: "index_pictures_on_article_id", using: :btree

  create_table "singles", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "sex"
    t.string   "description"
    t.integer  "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
