class AddScoreAndDateToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :score, :integer
    add_column :games, :startDate, :string
    add_column :games, :endDate, :string
  end
end
