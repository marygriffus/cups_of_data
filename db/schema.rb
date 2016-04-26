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

ActiveRecord::Schema.define(version: 20160426125952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bra_sizes", force: :cascade do |t|
    t.string   "label_size"
    t.decimal  "band_length"
    t.decimal  "stretched_band"
    t.decimal  "cup_width"
    t.decimal  "cup_depth"
    t.decimal  "cup_separation"
    t.decimal  "gore_height"
    t.integer  "num_hooks"
    t.integer  "rating_aesthetic"
    t.integer  "rating_comfort"
    t.integer  "rating_quality"
    t.integer  "bra_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "bras", force: :cascade do |t|
    t.string   "brand"
    t.string   "model"
    t.string   "image_url"
    t.string   "style"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "author"
    t.text     "body"
    t.integer  "bra_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
