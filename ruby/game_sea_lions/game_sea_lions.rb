=begin
PSEUDOCODE:
-The game will ask the first user to input one word
-The game will have one method take the letters of the word, and replace them with "_" characters
-The game will have one method that will provide the user with x amount of guesses. x = "_" * 2
-The game will have one method that will replace the "_" with each correct letter guess.
-The game will have one method that will determine if the guessing user has won or not.
-The game will have a driver code that will keep the game going WHILE the user is within the guess limits 
AND hasn't fully guessed the word yet.
=end

class Game
	attr_reader :guess_count, :guesses
	attr_accessor :word

	def initialize(word)
		@word = word
		@letter = letter
		@guess_count = 0
		@hidden_word = word.split(" ")
		@game = ["_ "*@hidden_word.length]
		@guesses = word.length*2
		@correct_letters = Array.new(@word.length, "_")
		@guessed_letters = []
		check_letter
	end

	def check_letter
		@guessed_letters << @letter
		if @word.include? @letter
			@word.split(" ").each_index do |x|
				if @word[x] == @letter
					@correct_letters[x] = @letter
				end
			end
		else
			@guess_count += 1
			puts "Try again!"
		end
	end

	def win_lose
		if @word.split(//) == @correct_letters
			puts "Congratulations! You won the game!"
		else
			puts "Sorry! Better luck next time!"
		end
	end
end

puts "Welcome to Word Guess."
puts "The object of the game, is to have one player write a word."
puts "And then, the other player must be able to guess the word correctly; letter-by-letter."
puts "The guessing player will have the amount of guesses be twice the length of the word."
puts ""
puts "Enter the desired guess word:"
word = gets.chomp.downcase
puts "="*90

while game.guess_count < game.guesses
	game = Game.new(word)
	puts "#{correct_letters.join(" ")}"
	puts "You have #{game.guesses} guesses. Good Luck!"
	puts "="*90
	puts "Choose a letter."
	letter = gets.chomp.downcase	
end		



