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
	attr_reader :guesses, :hidden_word, :game_over
	#attr_accessor 

	def initialize(word)
		@word = word
		@used_letters = []
		@hidden_word = ("_" * @word.length).split('')
		@guesses = word.length*2
		@game_over = false
	end

	def play(letter)
		#update(letter)
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
#the user takes a guess. 
#the program checks to see if the user has taken the guess before.
	#If the user has taken the guess before
		#tell the user that they have taken the guess before
		#repeat to step 1(line 89)
	#if the user has not taken the guess before
		#record the guess as a guessed letter
		#determine if the letter is a correct guess.
			#if it is a correct guess
				#update the space where the letter belongs
				#repeat to step 1
			#if the guess is incorrect
				#inform the user he is wrong
				#repeat to step 1
	def guessed_letters(letter)
		if @used_letters.include?(letter)
			#return true 
			puts "You have already guessed that letter. Try again!"
			puts "You still have #{@guesses} #{count} left."
		else
			#return false
		  #@used_letters << letter
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
			#guessed_letters(letter)
	end

	def game_done
		if @guesses == 0 && @hidden_word.include?("_")
			#puts "Sorry, you lose! Better luck next time"
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
	#puts game.hidden_word.join(' ')	
	letter = gets.chomp
end


#the user takes a guess. 
#the program checks to see if the user has taken the guess before.
	#If the user has taken the guess before
		#tell the user that they have taken the guess before
		#repeat to step 1(line 89)
	#if the user has not taken the guess before
		#record the guess as a guessed letter
		#determine if the letter is a correct guess.
			#if it is a correct guess
				#update the space where the letter belongs
				#repeat to step 1
			#if the guess is incorrect
				#inform the user he is wrong
				#repeat to step 1

	# def guessed_letters(letter)
	# 	if @used_letters.include?(letter)
	# 		puts "You've already used that letter. Try again!"
	# 		puts "You have #{@guesses} guesses left."
	# 	else
	# 		@used_letters << letter
	# 		@guesses -= 1
	# 	  puts "Wrong guess! Try again!"
	# 		puts "You have #{@guesses} guesses left."
	# 	end
	# 	letter_count = 0
	# 	letter_index = 0
	# 	@hidden_word.each do |l|
	# 		if @word == l
	# 			@hidden_word[letter_index] = l
	# 			letter_count += 1
	# 		end
	# 		letter_index += 1
	# 	end
	# 		puts "You are making progress"
	# 		puts "You have #{@guesses} guesses left."
	# 		@used_letters << letter
 #  end







