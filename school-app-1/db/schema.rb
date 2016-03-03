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

ActiveRecord::Schema.define(version: 20160303035453) do

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "identification"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "students_subjects", id: false, force: :cascade do |t|
    t.integer "student_id"
    t.integer "subject_id"
  end

  add_index "students_subjects", ["student_id"], name: "index_students_subjects_on_student_id"
  add_index "students_subjects", ["subject_id"], name: "index_students_subjects_on_subject_id"

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "identification"
    t.string   "speciality"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end