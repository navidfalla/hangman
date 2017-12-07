class GuessesController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
		@guess = @game.guesses.build(guess_params)
  	if !@guess.save
  		flash[:alert] = "There was an error in your guess"
  	end

  	redirect_to @game
  end

  private
  	def guess_params
  		params.require(:guess).permit(:letter)
  	end
end
