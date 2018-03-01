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

ActiveRecord::Schema.define(version: 20180301020038) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plays", force: :cascade do |t|
    t.string "game_id"
    t.string "game_date"
    t.integer "quarter"
    t.integer "minute"
    t.integer "second"
    t.string "offense_team", limit: 3
    t.string "defense_team", limit: 3
    t.integer "down"
    t.integer "to_go"
    t.integer "yard_line"
    t.boolean "series_first_down"
    t.integer "next_score"
    t.string "description"
    t.boolean "team_win"
    t.integer "season_year"
    t.integer "yards"
    t.string "formation"
    t.string "play_type"
    t.boolean "is_rush"
    t.boolean "is_pass"
    t.boolean "is_incomplete"
    t.boolean "is_touchdown"
    t.string "pass_type"
    t.boolean "is_sack"
    t.boolean "is_challenge"
    t.boolean "is_challenge_reversed"
    t.string "challenger"
    t.boolean "is_measurement"
    t.boolean "is_interception"
    t.boolean "is_fumble"
    t.boolean "is_penalty"
    t.boolean "is_two_point_conversion"
    t.boolean "is_two_point_conversion_successful"
    t.string "rush_direction"
    t.integer "yard_line_fixed"
    t.string "yard_line_direction"
    t.boolean "is_penalty_accepted"
    t.string "penalty_team", limit: 3
    t.boolean "is_no_play"
    t.string "penalty_type"
    t.integer "penalty_yards"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
