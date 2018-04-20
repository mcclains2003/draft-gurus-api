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

ActiveRecord::Schema.define(version: 2018_04_20_145759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "draft_rounds", force: :cascade do |t|
    t.bigint "draft_id"
    t.bigint "round_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["draft_id"], name: "index_draft_rounds_on_draft_id"
    t.index ["round_id"], name: "index_draft_rounds_on_round_id"
  end

  create_table "draft_years", force: :cascade do |t|
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drafts", force: :cascade do |t|
    t.string "title"
    t.bigint "draft_year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["draft_year_id"], name: "index_drafts_on_draft_year_id"
  end

  create_table "picks", force: :cascade do |t|
    t.integer "number"
    t.bigint "round_id"
    t.bigint "player_id"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_picks_on_player_id"
    t.index ["round_id"], name: "index_picks_on_round_id"
    t.index ["team_id"], name: "index_picks_on_team_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "school"
    t.string "year"
    t.string "position"
    t.string "height"
    t.string "weight"
    t.bigint "pick_id"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pick_id"], name: "index_players_on_pick_id"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.string "round"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
