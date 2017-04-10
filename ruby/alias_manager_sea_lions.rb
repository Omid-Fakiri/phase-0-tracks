=begin
-This is for Release 0
PSEUDOCODE:
-One method should reverse the first and last name
-Another method should advance the lowercase vowels by one string
-Another method should advance the uppercase vowels by one string
-Another method should advance the lowercase consonants by one string
-Another method should advance the uppercase consonants by one string
-The user should type the first name
-The user should type the last name
-All the methods should be combined after the user's call

def flip(fname, lname)
  "#{lname} #{fname}"
end

def lower_vowel_adv(str)
  vowels = ["a", "e", "i", "o", "u"]
  str = str.split('')
  str_new = str.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    else
      char
    end
  end
  str_new.join
end

def upper_vowel_adv(str)
  vowels = ["A", "E", "I", "O", "U"]
  str = str.split('')
  str_new = str.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    else
      char
    end
  end
  str_new.join
end

def lower_consonant_adv(str)
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  str = str.split('')
  str_new = str.map do |char|
    if consonants.include?(char)
      consonants.rotate(1)[consonants.index(char)]
    else
      char
    end
  end
  str_new.join
end

def upper_consonant_adv(str)
consonants = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
  str = str.split('')
  str_new = str.map do |char|
    if consonants.include?(char)
      consonants.rotate(1)[consonants.index(char)]
    else
      char
    end
  end
  str_new.join
end

fname = gets.chomp
lname = gets.chomp
upper_consonant_adv(lower_consonant_adv(upper_vowel_adv(lower_vowel_adv(flip(fname, lname)))))


-This is for Release 1
-This will need to provide the user an opportunity to provide the name of the 
 agent.  
-The user will need to keep inputting names until the user wants to stop.
-The user will have the opportunity to stop running the program by typing
 'quit', 'Quit', or 'QUIT'.
=end

loop do
	puts "What's your first name?"
	fname = gets.chomp

	break if fname == "quit" || fname == "Quit" || fname == "QUIT"

	puts "What's your last name?"
	lname = gets.chomp

	def flip(fname, lname)
  "#{lname} #{fname}"
	end

	def lower_vowel_adv(str)
  	vowels = ["a", "e", "i", "o", "u"]
  	str = str.split('')
  	str_new = str.map do |char|
    	if vowels.include?(char)
      	vowels.rotate(1)[vowels.index(char)]
    	else
      	char
    	end
  	end
  	str_new.join
	end

	def upper_vowel_adv(str)
  	vowels = ["A", "E", "I", "O", "U"]
  	str = str.split('')
  	str_new = str.map do |char|
    	if vowels.include?(char)
      	vowels.rotate(1)[vowels.index(char)]
    	else
      	char
    	end
  	end
  	str_new.join
	end

	def lower_consonant_adv(str)
  	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  	str = str.split('')
  	str_new = str.map do |char|
    	if consonants.include?(char)
      	consonants.rotate(1)[consonants.index(char)]
    	else
      	char
    	end
  	end
  	str_new.join
	end

	def upper_consonant_adv(str)
	consonants = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
  str = str.split('')
  str_new = str.map do |char|
    	if consonants.include?(char)
      	consonants.rotate(1)[consonants.index(char)]
    	else
      	char
    	end
  	end
  	str_new.join
	end

puts "This is your new name: #{upper_consonant_adv(lower_consonant_adv(upper_vowel_adv(lower_vowel_adv(flip(fname, lname)))))}."
puts ""
end