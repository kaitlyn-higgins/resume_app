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

ActiveRecord::Schema.define(version: 2019_07_02_192053) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "capstones", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "url"
    t.string "screenshot"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.string "degree"
    t.string "university"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.string "title"
    t.string "company_name"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.text "bio"
    t.string "linked_in"
    t.string "twitter"
    t.string "website"
    t.string "resume"
    t.string "github"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
