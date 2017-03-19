=begin
-This is for Release 0.
-This will be an attempt to create a fake name from the name, "James Bond".
-First, the name needs to be reversed, so it is read, "Bond James"
-Then, the name needs to be read as, "Cupf Kenit"
=end

spy = %w[James Bond]
str = ""

spy.reverse_each { |new| str += "#{new} " }

#puts str

puts str.gsub(/[abcdefghijklmnopqrstuvwxyzABCDEFGIJKLMNOPQRSTUVWXYZ]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a', 'A' => 'E', 'E' => 'I', 'I' => 'O', 'O' => 'U', 'U' => 'A', 'b' => 'c', 'c' => 'd', 'd' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 't' => 'v', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'b', 'B' => 'C', 'C' => 'D', 'D' => 'F', 'F' => 'G', 'G' => 'H', 'H' => 'J', 'J' => 'K', 'K' => 'L', 'L' => 'M', 'M' => 'N', 'N' => 'P', 'P' => 'Q', 'Q' => 'R', 'R' => 'S', 'S' => 'T', 'T' => 'V', 'V' => 'W', 'W' => 'X', 'X' => 'Y', 'Y' => 'Z', 'Z' => 'B')

=begin
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

  lname.gsub(/[abcdefghijklmnopqrstuvwxyzABCDEFGIJKLMNOPQRSTUVWXYZ]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a', 'A' => 'E', 'E' => 'I', 'I' => 'O', 'O' => 'U', 'U' => 'A', 'b' => 'c', 'c' => 'd', 'd' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 't' => 'v', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'b', 'B' => 'C', 'C' => 'D', 'D' => 'F', 'F' => 'G', 'G' => 'H', 'H' => 'J', 'J' => 'K', 'K' => 'L', 'L' => 'M', 'M' => 'N', 'N' => 'P', 'P' => 'Q', 'Q' => 'R', 'R' => 'S', 'S' => 'T', 'T' => 'V', 'V' => 'W', 'W' => 'X', 'X' => 'Y', 'Y' => 'Z', 'Z' => 'B')

  fname.gsub(/[abcdefghijklmnopqrstuvwxyzABCDEFGIJKLMNOPQRSTUVWXYZ]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a', 'A' => 'E', 'E' => 'I', 'I' => 'O', 'O' => 'U', 'U' => 'A', 'b' => 'c', 'c' => 'd', 'd' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 't' => 'v', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'b', 'B' => 'C', 'C' => 'D', 'D' => 'F', 'F' => 'G', 'G' => 'H', 'H' => 'J', 'J' => 'K', 'K' => 'L', 'L' => 'M', 'M' => 'N', 'N' => 'P', 'P' => 'Q', 'Q' => 'R', 'R' => 'S', 'S' => 'T', 'T' => 'V', 'V' => 'W', 'W' => 'X', 'X' => 'Y', 'Y' => 'Z', 'Z' => 'B')

puts "This is your new name: #{lname.gsub(/[abcdefghijklmnopqrstuvwxyzABCDEFGIJKLMNOPQRSTUVWXYZ]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a', 'A' => 'E', 'E' => 'I', 'I' => 'O', 'O' => 'U', 'U' => 'A', 'b' => 'c', 'c' => 'd', 'd' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 't' => 'v', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'b', 'B' => 'C', 'C' => 'D', 'D' => 'F', 'F' => 'G', 'G' => 'H', 'H' => 'J', 'J' => 'K', 'K' => 'L', 'L' => 'M', 'M' => 'N', 'N' => 'P', 'P' => 'Q', 'Q' => 'R', 'R' => 'S', 'S' => 'T', 'T' => 'V', 'V' => 'W', 'W' => 'X', 'X' => 'Y', 'Y' => 'Z', 'Z' => 'B')} #{fname.gsub(/[abcdefghijklmnopqrstuvwxyzABCDEFGIJKLMNOPQRSTUVWXYZ]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a', 'A' => 'E', 'E' => 'I', 'I' => 'O', 'O' => 'U', 'U' => 'A', 'b' => 'c', 'c' => 'd', 'd' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 't' => 'v', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'b', 'B' => 'C', 'C' => 'D', 'D' => 'F', 'F' => 'G', 'G' => 'H', 'H' => 'J', 'J' => 'K', 'K' => 'L', 'L' => 'M', 'M' => 'N', 'N' => 'P', 'P' => 'Q', 'Q' => 'R', 'R' => 'S', 'S' => 'T', 'T' => 'V', 'V' => 'W', 'W' => 'X', 'X' => 'Y', 'Y' => 'Z', 'Z' => 'B')}"
puts ""
end

=begin
-This is for Release 2
-This will provide a data structure to store all the names as they are entered.
-This will need a hash, and it will be called, "agents". It will be placed above
 the loop.
-The "full_name" and "fake_name" variables will fill up the hash as the user
 inputs names. The "full_name" will consist of the 2 interpolations of the 
 person's actual first and last names. The "fake_name" will consist of the 
 2 interpolations of the person's lastname.gsub and firstname.gsub.
-The .each do loop will use the full_name, fake_name, and print out a statement
 that the full name is also known as the fake name.
-Once the user enters "quit" upon entering a first name, the hash containing the
 full name and fake name will be printed out.
=end

agents = {}

loop do 
  
  puts "What's your first name?"
  fname = gets.chomp
  
  break if fname == "quit" || fname == "Quit" || fname == "QUIT"
  
  fname.gsub(/[abcdefghijklmnopqrstuvwxyzABCDEFGIJKLMNOPQRSTUVWXYZ]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a', 'A' => 'E', 'E' => 'I', 'I' => 'O', 'O' => 'U', 'U' => 'A', 'b' => 'c', 'c' => 'd', 'd' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 't' => 'v', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'b', 'B' => 'C', 'C' => 'D', 'D' => 'F', 'F' => 'G', 'G' => 'H', 'H' => 'J', 'J' => 'K', 'K' => 'L', 'L' => 'M', 'M' => 'N', 'N' => 'P', 'P' => 'Q', 'Q' => 'R', 'R' => 'S', 'S' => 'T', 'T' => 'V', 'V' => 'W', 'W' => 'X', 'X' => 'Y', 'Y' => 'Z', 'Z' => 'B')  
  
  puts "What's your last name?"
  lname = gets.chomp

  lname.gsub(/[abcdefghijklmnopqrstuvwxyzABCDEFGIJKLMNOPQRSTUVWXYZ]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a', 'A' => 'E', 'E' => 'I', 'I' => 'O', 'O' => 'U', 'U' => 'A', 'b' => 'c', 'c' => 'd', 'd' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 't' => 'v', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'b', 'B' => 'C', 'C' => 'D', 'D' => 'F', 'F' => 'G', 'G' => 'H', 'H' => 'J', 'J' => 'K', 'K' => 'L', 'L' => 'M', 'M' => 'N', 'N' => 'P', 'P' => 'Q', 'Q' => 'R', 'R' => 'S', 'S' => 'T', 'T' => 'V', 'V' => 'W', 'W' => 'X', 'X' => 'Y', 'Y' => 'Z', 'Z' => 'B')

  full_name = "#{fname} #{lname}"
  fake_name = "#{lname.gsub(/[abcdefghijklmnopqrstuvwxyzABCDEFGIJKLMNOPQRSTUVWXYZ]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a', 'A' => 'E', 'E' => 'I', 'I' => 'O', 'O' => 'U', 'U' => 'A', 'b' => 'c', 'c' => 'd', 'd' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 't' => 'v', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'b', 'B' => 'C', 'C' => 'D', 'D' => 'F', 'F' => 'G', 'G' => 'H', 'H' => 'J', 'J' => 'K', 'K' => 'L', 'L' => 'M', 'M' => 'N', 'N' => 'P', 'P' => 'Q', 'Q' => 'R', 'R' => 'S', 'S' => 'T', 'T' => 'V', 'V' => 'W', 'W' => 'X', 'X' => 'Y', 'Y' => 'Z', 'Z' => 'B')} #{fname.gsub(/[abcdefghijklmnopqrstuvwxyzABCDEFGIJKLMNOPQRSTUVWXYZ]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a', 'A' => 'E', 'E' => 'I', 'I' => 'O', 'O' => 'U', 'U' => 'A', 'b' => 'c', 'c' => 'd', 'd' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 't' => 'v', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'b', 'B' => 'C', 'C' => 'D', 'D' => 'F', 'F' => 'G', 'G' => 'H', 'H' => 'J', 'J' => 'K', 'K' => 'L', 'L' => 'M', 'M' => 'N', 'N' => 'P', 'P' => 'Q', 'Q' => 'R', 'R' => 'S', 'S' => 'T', 'T' => 'V', 'V' => 'W', 'W' => 'X', 'X' => 'Y', 'Y' => 'Z', 'Z' => 'B')}"
  
  agents[full_name] = fake_name

  agents.each do |full_name, fake_name|
  	p "#{full_name} is also known as #{fake_name}."
  	p
  end

end

puts agents