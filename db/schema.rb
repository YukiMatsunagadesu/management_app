# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_19_035118) do
  create_table "attendances", force: :cascade do |t|
    t.date "work_date"
    t.datetime "start_time"
    t.datetime "rest_start_time"
    t.datetime "rest_end_time"
    t.datetime "end_time"
    t.datetime "scheduled_work_start_time"
    t.datetime "scheduled_work_end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "member_id", null: false
    t.date "scheduled_work_day"
    t.index ["member_id"], name: "index_attendances_on_member_id"
  end

  create_table "holidayworks", force: :cascade do |t|
    t.date "date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "mail"
    t.string "phone"
    t.string "password"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "overtimes", force: :cascade do |t|
    t.string "reason"
    t.datetime "start_time"
    t.datetime "end_time"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rests", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "attendances", "members"
end
