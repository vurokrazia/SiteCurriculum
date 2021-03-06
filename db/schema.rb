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

ActiveRecord::Schema.define(version: 20181021171639) do

  create_table "curriculums", force: :cascade do |t|
    t.string "title"
    t.string "description_experience"
    t.string "link"
    t.string "start_date"
    t.string "finish_date"
    t.string "position"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "experience_id"
    t.index ["experience_id"], name: "index_curriculums_on_experience_id"
    t.index ["user_id"], name: "index_curriculums_on_user_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "has_experiences", force: :cascade do |t|
    t.integer "experience_id"
    t.integer "curriculum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curriculum_id"], name: "index_has_experiences_on_curriculum_id"
    t.index ["experience_id"], name: "index_has_experiences_on_experience_id"
  end

  create_table "has_tools", force: :cascade do |t|
    t.integer "curriculum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tool_id"
    t.index ["curriculum_id"], name: "index_has_tools_on_curriculum_id"
    t.index ["tool_id"], name: "index_has_tools_on_tool_id"
  end

  create_table "myskills", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "img_file_name"
    t.string "img_content_type"
    t.integer "img_file_size"
    t.datetime "img_updated_at"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "myskill_id"
    t.index ["myskill_id"], name: "index_tools_on_myskill_id"
    t.index ["user_id"], name: "index_tools_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.integer "age"
    t.string "city"
    t.string "num"
    t.string "education"
    t.string "youtube"
    t.string "facebook"
    t.string "twitter"
    t.string "linkedin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "permission_level", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
