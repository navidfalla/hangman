class AddWinsToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :wins, :integer, :default => 0
  end
end
