class Game
	attr_reader :guesses, :hidden_word, :game_over

	def initialize(word)
		@word = word
		@used_letters = []
		@hidden_word = ("_" * @word.length).split('')
		@guesses = word.length*2
		@game_over = false
	end

	def play(letter)
		count
		guessed_letters(letter)
		game_done
	end

	def count
		if @guesses == 1
			@guess_count = "guess"
		else
			@guess_count = "guesses"
		end
	end

	def guessed_letters(letter)
		if @used_letters.include?(letter)
			puts "You have already guessed that letter. Try again!"
			puts "You still have #{@guesses} #{count} left."
		else
		  update(letter)
		end
	end

	def update(letter)
		word_array = @word.split('')
			if @word.include?(letter)
				word_array.each_with_index do |action, index|
					if action == letter
						@hidden_word.slice!(index)
						@hidden_word.insert(index, letter)
					end
				end
				@used_letters << letter
				puts "Good job! You are making progress."
				puts "You still have #{@guesses} #{count} left."
			else
				@guesses -= 1
				@used_letters << letter
				puts "Sorry. That is incorrect."
				puts "You now have #{@guesses} #{count} left."
			end				
			puts @hidden_word.join(' ')
	end

	def game_done
		if @guesses == 0 && @hidden_word.include?("_")
			puts "Sorry, you lose!"
			puts "The word was: #{@word}"
			puts "Better luck next time."
			@game_over = true
			exit
		elsif @guesses == 1 && !@hidden_word.include?("_")
			puts "Congratulations! You won with your last guess."
			@game_over = true
			exit
		elsif !@hidden_word.include?("_")
			puts "Congratulations! You won!"
			@game_over = true
			exit
		else
			@word
		end
	end
end

puts "Welcome to the word guess game!"
puts 

puts "Enter the secret word:"
word = gets.chomp

game = Game.new(word)


puts "You have #{game.guesses} guesses to work with. Good Luck!"
puts 
puts "Enter a letter:"
puts game.hidden_word.join(' ')
letter = gets.chomp


while !game.game_over
	game.play(letter)
	puts "Enter another letter:"
	letter = gets.chomp
end