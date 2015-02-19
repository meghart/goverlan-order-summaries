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

ActiveRecord::Schema.define(version: 20150219220408) do

  create_table "order_summaries", force: true do |t|
    t.string   "account_name"
    t.string   "salesforce_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "reseller"
    t.string   "invoice"
    t.string   "purchase_type"
    t.string   "product"
    t.integer  "quantity"
    t.string   "activation"
    t.date     "support_start"
    t.date     "support_end"
    t.string   "status"
  end

  create_table "products", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "purchase_type"
    t.integer  "quantity"
    t.string   "term"
  end

end
