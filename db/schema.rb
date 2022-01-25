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

ActiveRecord::Schema.define(version: 2022_01_19_165109) do

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "price"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "director"
    t.string "description"
    t.boolean "showing"
  end

  create_table "receipt_line_items", force: :cascade do |t|
    t.integer "receipt_id"
    t.integer "food_id"
  end

  create_table "receipts", force: :cascade do |t|
    t.string "name"
    t.float "total"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.integer "movie_id"
    t.index ["movie_id"], name: "index_tickets_on_movie_id"
  end

end