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

ActiveRecord::Schema.define(version: 2021_05_14_024529) do

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

  create_table "consultants", primary_key: ["ConsultantID", "ConsultantEmail"], charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "ConsultantID", limit: 13, null: false
    t.string "ConsultantEmail", null: false
    t.integer "SpecialtyID"
    t.integer "ConsultHospitalID"
    t.string "StudentContactNo", limit: 30, null: false
    t.string "StudentEmail", null: false
    t.index ["ConsultHospitalID"], name: "HospitalID_idx"
    t.index ["ConsultantEmail"], name: "ConsultantEmail_UNIQUE", unique: true
    t.index ["ConsultantID"], name: "ConsultantID_UNIQUE", unique: true
    t.index ["SpecialtyID"], name: "SpecialtyID_UNIQUE", unique: true
    t.index ["StudentContactNo"], name: "StudentContactNo_UNIQUE", unique: true
    t.index ["StudentEmail"], name: "StudentEmail_UNIQUE", unique: true
  end

  create_table "courses", primary_key: "CourseCode", id: { type: :string, limit: 10 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "CourseDescription", limit: 64
    t.integer "CourseStudentTotal"
    t.index ["CourseCode"], name: "CourseCode_UNIQUE", unique: true
  end

  create_table "group_assignments", primary_key: "GroupID", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "GroupBlockID"
    t.integer "GroupSpecialtyID"
    t.index ["GroupBlockID"], name: "BlockID_UNIQUE", unique: true
    t.index ["GroupSpecialtyID"], name: "SpecialtyID_UNIQUE", unique: true
  end

  create_table "groups", primary_key: ["GroupID", "GroupStudentID"], charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "GroupID", null: false
    t.integer "GroupStudentID", null: false
    t.integer "GroupYear"
    t.index ["GroupID"], name: "GroupID_UNIQUE", unique: true
    t.index ["GroupStudentID"], name: "StudentID_UNIQUE", unique: true
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
    t.integer "NumStudents"
    t.index ["AvailableHospitalID"], name: "HospitalID_UNIQUE", unique: true
    t.index ["HospSpecialtyID"], name: "SpecialtyID_UNIQUE", unique: true
  end

# Could not dump table "hospitals" because of following StandardError
#   Unknown type 'geometry' for column 'HospitalLocation'

  create_table "registrar_assignments", primary_key: "BlockID", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "RegistrarID", limit: 13, null: false
    t.integer "HospitalID", null: false
    t.index ["BlockID"], name: "BlockID_UNIQUE", unique: true
    t.index ["HospitalID"], name: "HospitalID_UNIQUE", unique: true
    t.index ["RegistrarID"], name: "RegistrarID_UNIQUE", unique: true
  end

  create_table "registrars", primary_key: "RegistrarID", id: { type: :string, limit: 13 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "RegistrarEmail", null: false
    t.integer "SpecialtyID", null: false
    t.index ["RegistrarEmail"], name: "RegistrarEmail_idx"
    t.index ["RegistrarID"], name: "RegistrarID_UNIQUE", unique: true
    t.index ["SpecialtyID"], name: "SpecialtyID_UNIQUE", unique: true
  end

  create_table "specialties", primary_key: "SpecialtyID", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "SpecialtyName", limit: 64, null: false
    t.index ["SpecialtyID"], name: "SpecialtyID_UNIQUE", unique: true
  end

  create_table "specialty_pages", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "specialty_ID"
    t.string "specialty_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", primary_key: ["StudentNo", "StudentEmail"], charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "StudentNo", null: false
    t.string "StudentEmail", null: false
    t.string "CourseCode", limit: 45
    t.string "StudentName", limit: 64, null: false
    t.integer "StudentYOS", null: false
    t.string "StudentContactNo", limit: 30, null: false
    t.index ["CourseCode"], name: "CourseCode_idx"
    t.index ["StudentContactNo"], name: "StudentContactNo_UNIQUE", unique: true
    t.index ["StudentEmail"], name: "StudentEmail_UNIQUE", unique: true
    t.index ["StudentNo"], name: "StudentNo_UNIQUE", unique: true
  end

  create_table "users", primary_key: "UserEmail", id: :string, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "UserPassword", limit: 45, null: false
    t.string "UserFName", limit: 60, null: false
    t.string "UserLName", limit: 60, null: false
    t.string "UserContactNo", limit: 30, null: false
    t.string "UserType", limit: 45, null: false
    t.index ["UserContactNo"], name: "UserContactNo_UNIQUE", unique: true
    t.index ["UserEmail"], name: "UserEmail_UNIQUE", unique: true
  end

  add_foreign_key "consultants", "hospitals", column: "ConsultHospitalID", primary_key: "HospitalID", name: "ConsultHospitalID"
  add_foreign_key "consultants", "specialties", column: "SpecialtyID", primary_key: "SpecialtyID", name: "SoecialtyID"
  add_foreign_key "consultants", "users", column: "ConsultantEmail", primary_key: "UserEmail", name: "ConsultantEmail"
  add_foreign_key "group_assignments", "blocks", column: "GroupBlockID", primary_key: "BlockID", name: "GroupBlockID"
  add_foreign_key "group_assignments", "groups", column: "GroupID", primary_key: "GroupID", name: "GroupID"
  add_foreign_key "group_assignments", "specialties", column: "GroupSpecialtyID", primary_key: "SpecialtyID", name: "GroupSpecialtyID"
  add_foreign_key "groups", "students", column: "GroupStudentID", primary_key: "StudentNo", name: "GroupStudentID"
  add_foreign_key "hospital_assignments", "blocks", column: "BlockID", primary_key: "BlockID", name: "BlockID"
  add_foreign_key "hospital_assignments", "hospitals", column: "HospID", primary_key: "HospitalID", name: "HospID"
  add_foreign_key "hospital_assignments", "students", column: "StudentID", primary_key: "StudentNo", name: "StudentID"
  add_foreign_key "hospital_availabilities", "hospitals", column: "AvailableHospitalID", primary_key: "HospitalID", name: "AvailableHospitalID"
  add_foreign_key "hospital_availabilities", "specialties", column: "HospSpecialtyID", primary_key: "SpecialtyID", name: "HospSpecialtyID"
  add_foreign_key "registrar_assignments", "hospitals", column: "HospitalID", primary_key: "HospitalID", name: "HospitalID"
  add_foreign_key "registrar_assignments", "registrars", column: "RegistrarID", primary_key: "RegistrarID", name: "RegistrarID"
  add_foreign_key "registrars", "specialties", column: "SpecialtyID", primary_key: "SpecialtyID", name: "SpecialtyID"
  add_foreign_key "registrars", "users", column: "RegistrarEmail", primary_key: "UserEmail", name: "RegistrarEmail"
  add_foreign_key "students", "courses", column: "CourseCode", primary_key: "CourseCode", name: "CourseCode"
  add_foreign_key "students", "users", column: "StudentEmail", primary_key: "UserEmail", name: "StudentEmail"
end
