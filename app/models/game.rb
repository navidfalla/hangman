class Game < ApplicationRecord
	has_many :guesses, dependent: :destroy
	before_validation :set_word, on: :create

	validates :max_mistakes, presence: true
	validates :word, presence: true
	belongs_to :user

	def won?
		(word_array - correct_guesses).empty?
	end

	def lost?
		incorrect_guesses.size == max_mistakes
	end

	def finished?
		won? || lost?
	end

	def lives_left
		if !max_mistakes.nil? 
			max_mistakes - incorrect_guesses.size
		else nil
		end
	end

	def all_guesses
		self.guesses.pluck(:letter)
	end

	def correct_guesses
		all_guesses - incorrect_guesses
	end

	def incorrect_guesses
		all_guesses - word_array
	end

	def letters_remaining 
		word_array - correct_guesses
	end

	def already_guessed?(letter)
		all_guesses.include?(letter)
	end

	def word_array
		word.chars
	end

	def set_word
		result = File.read(Rails.root.join("words.txt")).split(/\n/).sample.upcase
		self.word = result.gsub(/[^A-Z]/, '')
	end
end