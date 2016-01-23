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

ActiveRecord::Schema.define(version: 20160121093228) do

  create_table "elections", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "hillary_clinton"
    t.boolean  "martin_omalley"
    t.boolean  "bernie_sanders"
    t.boolean  "jeb_bush"
    t.boolean  "ben_carson"
    t.boolean  "chris_christie"
    t.boolean  "ted_cruz"
    t.boolean  "carly_fiorina"
    t.boolean  "mike_huckabee"
    t.boolean  "john_kasich"
    t.boolean  "rand_paul"
    t.boolean  "marco_rubio"
    t.boolean  "rick_santorum"
    t.boolean  "donald_trump"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
