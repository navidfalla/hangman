class RemoveWinsFromGames < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :wins, :integer
  end
end
