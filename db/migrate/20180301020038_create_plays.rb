class CreatePlays < ActiveRecord::Migration[5.1]
  def change
    create_table :plays do |t|
      t.string :game_id
      t.string :game_date
      t.integer :quarter
      t.integer :minute
      t.integer :second
      t.string :offense_team, limit: 3
      t.string :defense_team, limit: 3
      t.integer :down
      t.integer :to_go
      t.integer :yard_line
      t.boolean :series_first_down
      t.integer :next_score
      t.string :description
      t.boolean :team_win
      t.integer :season_year
      t.integer :yards
      t.string :formation
      t.string :play_type
      t.boolean :is_rush
      t.boolean :is_pass
      t.boolean :is_incomplete
      t.boolean :is_touchdown
      t.string :pass_type
      t.boolean :is_sack
      t.boolean :is_challenge
      t.boolean :is_challenge_reversed
      t.string :challenger
      t.boolean :is_measurement
      t.boolean :is_interception
      t.boolean :is_fumble
      t.boolean :is_penalty
      t.boolean :is_two_point_conversion
      t.boolean :is_two_point_conversion_successful
      t.string :rush_direction
      t.integer :yard_line_fixed
      t.string :yard_line_direction
      t.boolean :is_penalty_accepted
      t.string :penalty_team, limit: 3
      t.boolean :is_no_play
      t.string :penalty_type
      t.integer :penalty_yards
      t.timestamps
    end
  end
end
