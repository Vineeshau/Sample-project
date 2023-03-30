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

ActiveRecord::Schema[7.0].define(version: 2023_03_29_121241) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string "dept_name"
    t.string "dept_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.string "exam_name"
    t.datetime "shedule_date"
    t.bigint "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_exams_on_subject_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "class_name"
    t.bigint "department_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_groups_on_department_id"
    t.index ["teacher_id"], name: "index_groups_on_teacher_id"
  end

  create_table "marks", force: :cascade do |t|
    t.string "sub_name"
    t.bigint "mark1"
    t.bigint "student_exam_id"
    t.boolean "progress_report"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_exam_id"], name: "index_marks_on_student_exam_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string "parent_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_exams", force: :cascade do |t|
    t.string "exam_types"
    t.bigint "exam_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_student_exams_on_exam_id"
    t.index ["student_id"], name: "index_student_exams_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.bigint "age"
    t.string "email"
    t.string "place"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_active", default: true
    t.bigint "parent_id"
    t.index ["group_id"], name: "index_students_on_group_id"
    t.index ["parent_id"], name: "index_students_on_parent_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "sub_name"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "teacher_name"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_teachers_on_department_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "index"
  end

end
