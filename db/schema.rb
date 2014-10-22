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

ActiveRecord::Schema.define(version: 20141021105038) do

  create_table "admins", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "middlename"
    t.string   "username"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "national_id_no"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "motorcycles", force: true do |t|
    t.string   "title"
    t.string   "motor_cycle_type"
    t.string   "motor_cycle_modle"
    t.string   "owner_passport"
    t.string   "entry_date"
    t.integer  "vehiclemanager_id"
    t.string   "shipped_from"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offencecauses", force: true do |t|
    t.integer  "offence_id"
    t.integer  "permit_id"
    t.integer  "permitofficer_id"
    t.date     "openning_date"
    t.date     "closing_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offences", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.decimal  "charge_fee",  precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "middlename"
    t.string   "citizenship"
    t.string   "current_address"
    t.string   "home_address"
    t.string   "passport_no"
    t.string   "home_phone_no"
    t.string   "mobile_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permitofficers", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "middlename"
    t.string   "username"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "national_id_no"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permitowners", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "middlename"
    t.string   "citizenship"
    t.string   "current_address"
    t.string   "home_address"
    t.string   "passport_no"
    t.string   "home_phone_no"
    t.string   "mobile_no"
    t.integer  "permit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permits", force: true do |t|
    t.string   "permit_number"
    t.date     "issued_date"
    t.date     "expiry_date"
    t.integer  "permitowner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trafficofficers", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "middlename"
    t.string   "username"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "national_id_no"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehiclemanagers", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "middlename"
    t.string   "username"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "national_id_no"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", force: true do |t|
    t.string   "title"
    t.string   "vehicle_type"
    t.string   "vehicle_modle"
    t.string   "owner_passport"
    t.string   "entry_date"
    t.integer  "vehiclemanager_id"
    t.string   "shipped_from"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
