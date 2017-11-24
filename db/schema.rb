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

ActiveRecord::Schema.define(version: 20170929205726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hostel_blocks", force: :cascade do |t|
    t.integer  "block_no"
    t.string   "block_warden"
    t.string   "location"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "hostel_forms", force: :cascade do |t|
    t.string   "image"
    t.string   "cnic_image"
    t.string   "name"
    t.string   "father_name"
    t.string   "department"
    t.string   "nationality"
    t.date     "date_of_birth"
    t.string   "cnic_number"
    t.string   "mobile_number"
    t.string   "emergency_mb_number"
    t.string   "university_registration_number"
    t.string   "session"
    t.integer  "hostel_fees"
    t.string   "chalan_number"
    t.date     "pay_date"
    t.string   "bank"
    t.string   "local"
    t.string   "city"
    t.string   "postel_address"
    t.string   "permanent_address"
    t.string   "religion"
    t.string   "blood_group"
    t.integer  "previous_block_no"
    t.integer  "previous_room_no"
    t.integer  "new_block_no"
    t.integer  "new_room_no"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "room_no"
    t.string   "room_type"
    t.integer  "hostel_block_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["hostel_block_id"], name: "index_rooms_on_hostel_block_id", using: :btree
  end

  create_table "sessions", force: :cascade do |t|
    t.date     "sess_starting"
    t.date     "sess_ending"
    t.string   "duration"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "image"
    t.string   "name"
    t.string   "f_name"
    t.string   "designation"
    t.date     "age"
    t.integer  "sallary"
    t.string   "cell"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "image"
    t.string   "upc"
    t.string   "name"
    t.string   "father_name"
    t.string   "department"
    t.string   "chairman"
    t.string   "cnic_no"
    t.string   "cell_no"
    t.string   "emer_cell_no"
    t.date     "age"
    t.string   "city"
    t.string   "local"
    t.integer  "hostel_fees"
    t.integer  "chalan_no"
    t.date     "pay_date"
    t.string   "bank"
    t.string   "nationality"
    t.string   "address"
    t.string   "blood_group"
    t.string   "university_regestration_no"
    t.integer  "session_id"
    t.integer  "hostel_block_id"
    t.integer  "room_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["hostel_block_id"], name: "index_students_on_hostel_block_id", using: :btree
    t.index ["room_id"], name: "index_students_on_room_id", using: :btree
    t.index ["session_id"], name: "index_students_on_session_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.boolean  "admin"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city"
    t.string   "cnic"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "rooms", "hostel_blocks"
  add_foreign_key "students", "hostel_blocks"
  add_foreign_key "students", "rooms"
  add_foreign_key "students", "sessions"
end
