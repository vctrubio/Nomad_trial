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

ActiveRecord::Schema.define(version: 2019_04_06_195616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "user_id"
    t.datetime "start"
    t.string "equipment_used"
    t.boolean "teacher_confirmation", default: false
    t.boolean "payment", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.index ["teacher_id"], name: "index_appointments_on_teacher_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end
# lesson has appointment_id but appointment does not hold lesson_id

  create_table "lessons", force: :cascade do |t|
    t.string "description"
    t.string "hours"
    t.string "price"
    t.bigint "appointment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_lessons_on_appointment_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "kite_saftey"
    t.string "kite_level"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number_mxn"
    t.date "contract_start"
    t.date "contract_end"
    t.string "languages"
    t.string "total_hours_integer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "teachers"
  add_foreign_key "appointments", "users"
  add_foreign_key "lessons", "appointments"
end
