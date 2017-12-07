class Guess < ApplicationRecord
  belongs_to :game
  validates :letter, presence: true
  after_save :test_win, :test_lose

  def test_win
    game = Game.find(self.game_id)
    user = User.find(game.user_id)
    if game.won? 
      user.increment!(:wins)
      percentage = user.wins / user.total.to_f
      user.update(percent: percentage)
		end
  end

  def test_lose
    game = Game.find(self.game_id)
    user = User.find(game.user_id)
    if game.lost? 
      user.increment!(:losses)
      percentage = user.wins / user.total.to_f
      user.update(percent: percentage)
		end
  end
end