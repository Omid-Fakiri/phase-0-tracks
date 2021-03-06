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

-This is for Release 2
-This will provide a data structure to store all the names as they are entered.
-This will need a hash, and it will be called, "agents". It will be placed above
 the loop.
-The "full_name" and "fake_name" variables will fill up the hash as the user
 inputs names. The "full_name" will serve as keys, the "fake_name" will serve as values.
-The combined methods will use the full_name, fake_name, and print out a statement
 that the full name is also known as the fake name.
-Once the user enters "quit" upon entering a first name, the hash containing the
 full name and fake name will be printed out.
=end

def flip(full_name)
  array = full_name.split
  array_reverse = array.reverse
  full_name = array_reverse.join(' ')
end

def lower_vowel_adv(str)
  vowels = "aeiou"
  array = str.split('')
  array.map! do |vowel|
    if vowels.index(vowel)
      if vowel == vowels[4]
        vowel = vowels[0]
      else
        vowel = vowels[vowels.index(vowel) + 1]
      end
    else
      vowel
    end
  end
  array.join
end

def upper_vowel_adv(str)
  vowels = "AEIOU"
  array = str.split('')
  array.map! do |vowel|
    if vowels.index(vowel)
      if vowel == vowels[4]
        vowel = vowels[0]
      else
        vowel = vowels[vowels.index(vowel) + 1]
      end
    else
      vowel
    end
  end
  array.join
end

def lower_consonant_adv(str)
  consonants = "bcdfghjklmnpqrstvwxyz"
  array = str.split('')
  array.map! do |consonant|
    if consonants.index(consonant)
      if consonant == consonants[20]
        consonant = consonants[0]
      else
        consonant = consonants[consonants.index(consonant) + 1]
      end
    else
      consonant
    end
  end
  array.join
end

def upper_consonant_adv(str)
  consonants = "BCDFGHJKLMNPQRSTVWXYZ"
  array = str.split('')
  array = array.map! do |consonant|
    if consonants.index(consonant)
      if consonant == consonants[20]
        consonant = consonants[0]
      else
        consonant = consonants[consonants.index(consonant) + 1]
      end
    else
      consonant
    end
  end
  array.join
end

agents = {}

loop do
  puts ""
  puts "What is your full name? (Enter 'quit' to exit program)"
  full_name = gets.chomp

  break if full_name == "quit" || full_name == "Quit" || full_name == "QUIT"
  real_name = "#{full_name}"
  fake_name = "#{upper_consonant_adv(lower_consonant_adv(upper_vowel_adv(lower_vowel_adv(flip(full_name)))))}" 
  agents[real_name] = fake_name

  agents.each do |real_name, fake_name|
    puts "#{real_name} is also known as #{fake_name}."
  
  end
end
puts ""
puts agents