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

ActiveRecord::Schema.define(version: 20130310153848) do

  create_table "courses", force: true do |t|
    t.string   "title"
    t.string   "section"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evaluations", force: true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.text     "comment"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_participants", force: true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_participants", ["project_id"], name: "index_project_participants_on_project_id"
  add_index "project_participants", ["user_id"], name: "index_project_participants_on_user_id"

  create_table "projects", force: true do |t|
    t.string   "title"
    t.text     "abstract"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_roles", force: true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "location"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
