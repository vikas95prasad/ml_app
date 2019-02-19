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

ActiveRecord::Schema.define(version: 2018_12_02_072508) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "black_fridays", force: :cascade do |t|
    t.string "user_id"
    t.string "product_id"
    t.string "gender"
    t.integer "age"
    t.string "occupation"
    t.string "city_category"
    t.string "stay_in_current_city_years"
    t.string "marital_status"
    t.string "product_category_1"
    t.string "product_category_2"
    t.string "product_category_3"
    t.string "purchase"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
