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

ActiveRecord::Schema.define(version: 2021_06_20_202116) do

  create_table "artykuls", force: :cascade do |t|
    t.integer "strona_id"
    t.string "nazwa"
    t.integer "pozycja"
    t.boolean "widoczny", default: true
    t.text "zawartosc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kategories", force: :cascade do |t|
    t.string "nazwa"
    t.integer "pozycja"
    t.boolean "widoczna", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stronas", force: :cascade do |t|
    t.integer "kategorie_id"
    t.string "nazwa"
    t.integer "pozycja"
    t.boolean "widoczna", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["kategorie_id"], name: "index_stronas_on_kategorie_id"
  end

  create_table "uzytkowniks", force: :cascade do |t|
    t.string "imie", limit: 20
    t.string "nazwisko", limit: 60
    t.string "uzytkownik", limit: 25
    t.string "email", limit: 100, default: "", null: false
    t.string "telefon", default: "", null: false
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["uzytkownik"], name: "index_uzytkowniks_on_uzytkownik"
  end

end
