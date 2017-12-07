class RemoveTotalFromGames < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :total, :integer
  end
end
