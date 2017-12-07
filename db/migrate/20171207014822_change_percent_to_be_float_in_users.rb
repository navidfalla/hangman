class ChangePercentToBeFloatInUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :percent, :float
  end
end
