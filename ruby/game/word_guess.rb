
class WordGuess
	attr_reader :guess_count, :is_over
	attr_accessor :letter, :word

	def initialize
		puts "Welcome to Word Guess."
		puts "The object of the game, is to have one player write a word."
		puts "And then, the other player must be able to guess the word correctly; letter-by-letter."
		puts "The guessing player will have the amount of guesses be twice the length of the word."
		puts ""
		puts "Enter the desired guess word:"
		@letter = letter
		@word = word
		@guess_count = 0
		@is_over = false
	end

	def letters
		@letters = []
		@letters = word.split(" ")
		@game = ["_"*letters.length]
		@guess_count = @letters*2
	end

	def progress
		@guess_count += 1
	end
end

wordguess = WordGuess.new