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

ActiveRecord::Schema.define(version: 20170406104042) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrators", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone"
    t.integer  "identification"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone"
    t.integer  "identification"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "directors_gradeworks", force: :cascade do |t|
    t.integer  "director_id"
    t.integer  "gradework_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["director_id"], name: "index_directors_gradeworks_on_director_id", using: :btree
    t.index ["gradework_id"], name: "index_directors_gradeworks_on_gradework_id", using: :btree
  end

  create_table "feedbacks", force: :cascade do |t|
    t.text     "anotations"
    t.integer  "score"
    t.integer  "gradework_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["gradework_id"], name: "index_feedbacks_on_gradework_id", using: :btree
    t.index ["user_id"], name: "index_feedbacks_on_user_id", using: :btree
  end

  create_table "file_gradeworks", force: :cascade do |t|
    t.string   "name"
    t.string   "path"
    t.text     "description"
    t.integer  "size"
    t.integer  "gradework_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["gradework_id"], name: "index_file_gradeworks_on_gradework_id", using: :btree
  end

  create_table "gradework_users", force: :cascade do |t|
    t.integer  "gradework_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["gradework_id"], name: "index_gradework_users_on_gradework_id", using: :btree
    t.index ["user_id"], name: "index_gradework_users_on_user_id", using: :btree
  end

  create_table "gradeworks", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "status"
    t.date     "delivery_date"
    t.date     "begin_date"
    t.time     "hour"
    t.text     "locale"
    t.string   "semester"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "file"
  end

  create_table "juries", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone"
    t.integer  "identification"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "juries_gradeworks", force: :cascade do |t|
    t.integer  "jury_id"
    t.integer  "gradework_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["gradework_id"], name: "index_juries_gradeworks_on_gradework_id", using: :btree
    t.index ["jury_id"], name: "index_juries_gradeworks_on_jury_id", using: :btree
  end

  create_table "role_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_role_users_on_role_id", using: :btree
    t.index ["user_id"], name: "index_role_users_on_user_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone"
    t.integer  "identification"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.integer  "identification"
    t.integer  "phone"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_foreign_key "directors_gradeworks", "directors"
  add_foreign_key "feedbacks", "gradeworks"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "file_gradeworks", "gradeworks"
  add_foreign_key "gradework_users", "gradeworks"
  add_foreign_key "gradework_users", "users"
  add_foreign_key "juries_gradeworks", "juries"
  add_foreign_key "role_users", "roles"
  add_foreign_key "role_users", "users"
end
