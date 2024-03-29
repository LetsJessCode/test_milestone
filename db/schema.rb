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

ActiveRecord::Schema.define(version: 20200721154932) do

  create_table "kids", force: :cascade do |t|
    t.string   "child_fname"
    t.string   "child_mname"
    t.string   "child_lname"
    t.date     "birthday"
    t.integer  "weight_lbs"
    t.integer  "weight_oz"
    t.integer  "height"
    t.string   "parent1_fname"
    t.string   "parent1_lname"
    t.string   "parent2_fname"
    t.string   "parent2_lname"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
  end

  create_table "milestones", force: :cascade do |t|
    t.string   "title"
    t.integer  "kid_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
