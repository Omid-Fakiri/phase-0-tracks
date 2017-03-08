puts "What is the hamster's name?"
name = gets.chomp

puts "How loud is the hamster from a scale of 1 to 10?"
volume = gets.chomp.to_i

puts "What is the hamster's fur color?"
color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)"
adoption = gets.chomp.downcase

until adoption == "y" || adoption == "n"
	puts "Is the hamster a good candidate for adoption? (y/n)"
	adoption = gets.chomp.downcase
end

puts "How old is the hamster?"
age = gets.chomp

if age == ""
	age = nil
else
	age = age.to_i
end