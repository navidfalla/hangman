class RemoveLossessFromGames < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :losses, :integer
  end
end
