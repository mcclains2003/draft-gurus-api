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

ActiveRecord::Schema.define(version: 2018_04_24_163728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "draft_picks", force: :cascade do |t|
    t.integer "draft_id"
    t.integer "pick_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer "round"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_picks", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "pick_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pick_id"], name: "index_player_picks_on_pick_id"
    t.index ["player_id"], name: "index_player_picks_on_player_id"
  end

  create_table "player_teams", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_player_teams_on_player_id"
    t.index ["team_id"], name: "index_player_teams_on_team_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "school"
    t.string "year"
    t.string "position"
    t.string "height"
    t.string "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_picks", force: :cascade do |t|
    t.bigint "team_id"
    t.bigint "pick_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pick_id"], name: "index_team_picks_on_pick_id"
    t.index ["team_id"], name: "index_team_picks_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "player_picks", "picks"
  add_foreign_key "player_picks", "players"
  add_foreign_key "player_teams", "players"
  add_foreign_key "player_teams", "teams"
  add_foreign_key "team_picks", "picks"
  add_foreign_key "team_picks", "teams"
end
