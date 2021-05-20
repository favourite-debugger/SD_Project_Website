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

ActiveRecord::Schema.define(version: 2021_05_19_014114) do

  create_table "admins", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "blocks", primary_key: "BlockID", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "BlockStartDate", null: false
    t.date "BlockEndDate", null: false
  end

  create_table "consultants", primary_key: "ConsultantID", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "ConsultantEmail"
    t.integer "SpecialtyID"
    t.integer "ConsultHospitalID"
    t.string "StudentContactNo", limit: 30, null: false
    t.string "StudentEmail", null: false
    t.index ["ConsultHospitalID"], name: "HospitalID_idx"
    t.index ["ConsultantID"], name: "ConsultantID_UNIQUE", unique: true
    t.index ["StudentContactNo"], name: "StudentContactNo_UNIQUE", unique: true
    t.index ["StudentEmail"], name: "StudentEmail_UNIQUE", unique: true
  end

  create_table "courses", primary_key: "CourseID", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "CourseDescription", limit: 64
    t.integer "CourseStudentTotal"
    t.string "CourseCode", limit: 10, null: false
    t.index ["CourseCode"], name: "CourseCode_UNIQUE", unique: true
  end

  create_table "group_assignments", primary_key: "GroupID", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "GroupBlockID"
    t.index ["GroupBlockID"], name: "BlockID_UNIQUE", unique: true
  end

  create_table "groups", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "GroupStudentID"
    t.integer "GroupStudentYear"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hospital_assignments", primary_key: "StudentID", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "HospID"
    t.integer "BlockID"
    t.index ["BlockID"], name: "BlockID_idx"
    t.index ["HospID"], name: "HospitalID_idx"
  end

  create_table "hospital_availabilities", primary_key: ["HospSpecialtyID", "AvailableHospitalID"], charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "HospSpecialtyID", null: false
    t.integer "AvailableHospitalID", null: false
    t.integer "NumStudents", null: false
    t.index ["AvailableHospitalID"], name: "HospitalID_UNIQUE", unique: true
    t.index ["HospSpecialtyID"], name: "SpecialtyID_UNIQUE", unique: true
  end

# Could not dump table "hospitals" because of following StandardError
#   Unknown type 'geometry' for column 'HospitalLocation'

  create_table "programme_courses", id: false, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "ProgrammeID"
    t.integer "CourseID"
    t.index ["CourseID"], name: "Course_ID_idx"
    t.index ["ProgrammeID"], name: "ProgrammeID_idx"
  end

  create_table "programmes", primary_key: "ProgrammeID", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "ProgrammeDescription"
    t.index ["ProgrammeID"], name: "Programme_ID_UNIQUE", unique: true
  end

  create_table "registrar_assignments", primary_key: "BlockID", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "RegistrarID", null: false
    t.integer "HospitalID", null: false
    t.index ["BlockID"], name: "BlockID_UNIQUE", unique: true
    t.index ["HospitalID"], name: "HospitalID_UNIQUE", unique: true
    t.index ["RegistrarID"], name: "RegistrarID_UNIQUE", unique: true
  end

  create_table "registrars", primary_key: "RegistrarID", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "RegistrarEmail"
    t.index ["RegistrarEmail"], name: "RegistrarEmail_idx"
    t.index ["RegistrarID"], name: "RegistrarID_UNIQUE", unique: true
  end

  create_table "specialties", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "SpecialtyName"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "specialty_pages", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "specialty_ID"
    t.string "specialty_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", primary_key: "StudentNo", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "StudentEmail"
    t.string "CourseCode", limit: 45
    t.string "StudentName", limit: 64, null: false
    t.integer "StudentYOS", null: false
    t.string "StudentContactNo", limit: 30, null: false
    t.index ["CourseCode"], name: "CourseCode_idx"
    t.index ["StudentContactNo"], name: "StudentContactNo_UNIQUE", unique: true
    t.index ["StudentNo"], name: "StudentNo_UNIQUE", unique: true
  end

  create_table "users", primary_key: "UserID", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "UserFName", limit: 60
    t.string "UserLName", limit: 60
    t.string "UserContactNo", limit: 30
    t.string "UserType", limit: 45
    t.string "email", default: ""
    t.string "encrypted_password", default: ""
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.index ["UserContactNo"], name: "UserContactNo_UNIQUE", unique: true
    t.index ["email"], name: "email_UNIQUE", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "consultants", "hospitals", column: "ConsultHospitalID", primary_key: "HospitalID", name: "ConsultHospitalID"
  add_foreign_key "group_assignments", "blocks", column: "GroupBlockID", primary_key: "BlockID", name: "GroupBlockID"
  add_foreign_key "hospital_assignments", "blocks", column: "BlockID", primary_key: "BlockID", name: "BlockID"
  add_foreign_key "hospital_assignments", "hospitals", column: "HospID", primary_key: "HospitalID", name: "HospID"
  add_foreign_key "hospital_assignments", "students", column: "StudentID", primary_key: "StudentNo", name: "StudentID"
  add_foreign_key "hospital_availabilities", "hospitals", column: "AvailableHospitalID", primary_key: "HospitalID", name: "AvailableHospitalID"
  add_foreign_key "programme_courses", "courses", column: "CourseID", primary_key: "CourseID", name: "CourseID"
  add_foreign_key "programme_courses", "programmes", column: "ProgrammeID", primary_key: "ProgrammeID", name: "ProgrammeID"
  add_foreign_key "registrar_assignments", "hospitals", column: "HospitalID", primary_key: "HospitalID", name: "HospitalID"
  add_foreign_key "registrar_assignments", "registrars", column: "RegistrarID", primary_key: "RegistrarID", name: "RegistrarID"
  add_foreign_key "students", "courses", column: "CourseCode", primary_key: "CourseCode", name: "CourseCode"
end
