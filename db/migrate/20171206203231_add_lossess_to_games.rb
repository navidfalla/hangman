class AddLossessToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :losses, :integer, :default => 0
  end
end
