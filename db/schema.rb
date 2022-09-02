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

ActiveRecord::Schema[7.0].define(version: 2022_09_02_181107) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "rules_text"
    t.string "rarity"
    t.integer "power"
    t.integer "toughness"
    t.integer "expansion_id"
  end

  create_table "cards_in_decks", force: :cascade do |t|
    t.integer "deck_id"
    t.integer "card_id"
    t.integer "number_in_deck"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cardsubtypes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "card_id"
    t.integer "subtype_id"
  end

  create_table "cardsupertypes", force: :cascade do |t|
    t.integer "card_id"
    t.integer "supertype_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cardtypes", force: :cascade do |t|
    t.string "card_id"
    t.string "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "user_id"
    t.string "description"
  end

  create_table "expansions", force: :cascade do |t|
    t.string "full_name"
    t.string "abbreviation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subtypes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "subtype_name"
  end

  create_table "supertypes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type_name"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

end
