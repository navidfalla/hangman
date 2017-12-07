module GamesHelper
  def hangman_figure(game)
		if game.won? 
			"win.png"
		else 
			game.max_mistakes.to_s + "/" + game.incorrect_guesses.size.to_s + ".png"
		end
	end


	def increase_win(game)
		if game.won? 
			current_user.increment!(:wins)
		end
	end
	
end
