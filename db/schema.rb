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

ActiveRecord::Schema.define(version: 20140706155901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "instruments", force: true do |t|
    t.decimal  "amount",         precision: 7, scale: 4
    t.float    "ytm"
    t.integer  "age"
    t.integer  "timeToMaturity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "limit_orders", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loans", force: true do |t|
    t.integer  "amount"
    t.string   "int_rating"
    t.decimal  "interest",       precision: 3, scale: 3
    t.float    "defaults_count"
    t.decimal  "ytm",            precision: 3, scale: 3
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loans2", force: true do |t|
    t.decimal  "amount",         precision: 7, scale: 4
    t.float    "ytm"
    t.integer  "age"
    t.integer  "timeToMaturity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "market_orders", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "goodTill"
    t.boolean  "isLimit"
    t.decimal  "ytm",        precision: 3, scale: 3
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portfolios", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portfolios_loans", id: false, force: true do |t|
    t.integer "portfolio_id"
    t.integer "loan_id"
  end

  create_table "trades", force: true do |t|
    t.integer  "instrument_id"
    t.integer  "order_id"
    t.integer  "dummy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
