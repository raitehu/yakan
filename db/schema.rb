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

ActiveRecord::Schema.define(version: 20181115151837) do

  create_table "careers", force: :cascade do |t|
    t.date "the_day"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fee_structures", force: :cascade do |t|
    t.string "who"
    t.integer "how_much"
    t.integer "performance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "introductions", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "performances", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.date "performance_date"
    t.string "venue"
    t.string "poster"
    t.text "description"
    t.string "ticket_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "role"
    t.string "name"
    t.integer "performance_id"
    t.integer "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string "format"
    t.string "program_title"
    t.string "effect"
    t.integer "performance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
