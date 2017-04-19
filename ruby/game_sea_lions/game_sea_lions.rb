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
	attr_reader :guess_count
	attr_accessor :word

	def initialize(word)
		@word = word
		@guess_count = 0
	end

	def hidden_word
		@hidden_word = ["_ "*word.length]
	end

	def guesses
		@guesses = @word.length*2
	end
end

puts "Welcome to the word guess game!"
puts "="*50

puts "Enter the secret word:"
word = gets.chomp

game = Game.new(word)

game.hidden_word
game.guesses