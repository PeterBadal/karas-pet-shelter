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

ActiveRecord::Schema.define(version: 201710051107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adoptions", id: :serial, force: :cascade do |t|
    t.integer "owner_id"
    t.integer "pet_id"
    t.date "adoption_date"
    t.integer "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_adoptions_on_owner_id"
    t.index ["pet_id"], name: "index_adoptions_on_pet_id"
  end

  create_table "owners", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.string "species", null: false
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
