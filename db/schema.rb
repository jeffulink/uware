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

ActiveRecord::Schema.define(version: 20170819170030) do

  create_table "areas", force: :cascade do |t|
    t.string   "ename"
    t.string   "cname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.integer  "com_id"
    t.integer  "skill_id"
    t.integer  "sales_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "employee_id"
    t.integer  "area_id"
    t.index ["area_id"], name: "index_companies_on_area_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "employee"
    t.string   "cname"
    t.string   "dept"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", force: :cascade do |t|
    t.string   "customer"
    t.string   "sales"
    t.string   "area"
    t.text     "opp"
    t.text     "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
