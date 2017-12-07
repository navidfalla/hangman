class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :word, default: "SHOOBX"
      t.integer :max_mistakes

      t.timestamps null: false
    end
  end
end
