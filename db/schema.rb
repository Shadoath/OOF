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

ActiveRecord::Schema.define(version: 20140620151116) do

  create_table "active_plants", force: true do |t|
    t.integer  "plant_id"
    t.integer  "status_id"
    t.integer  "location_id"
    t.integer  "count_active"
    t.integer  "count_harvested"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "daily_records", force: true do |t|
    t.date     "daily_date"
    t.integer  "temp_low"
    t.integer  "temp_high"
    t.integer  "eggs_collected"
    t.integer  "total_ducks"
    t.time     "hours_of_daylight"
    t.time     "sunrise"
    t.integer  "moon_phase_id"
    t.integer  "moon_percent"
    t.string   "weather"
    t.boolean  "rained"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "harvest_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.integer  "soil_id"
    t.integer  "size"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moon_phases", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plant_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plants", force: true do |t|
    t.string   "name"
    t.string   "plant_type"
    t.string   "group"
    t.integer  "water_amount_id"
    t.integer  "harvest_type_id"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "soils", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "water_amounts", force: true do |t|
    t.string "name"
  end

end
