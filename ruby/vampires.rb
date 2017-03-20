puts "What is your name?"
user_name = gets.to_s

puts "How old are you? (age number only)"
age = gets.to_i

puts "What year were you born? (year number only)"
year = gets.to_i

current_year = Time.now.year
verified age = current_year - year

puts "We have some garlic bread in the cafeteria. Would you like some? (yes or no)"
bread = gets.chomp.downcase

until bread == "yes" || bread == "no"
	puts "We have some garlic bread in the cafeteria. Would you like some? (yes or no)"
	bread = gets.chomp.downcase
end

puts "Would you like to enroll in our health insurance plan? (yes or no)"
insurannce = gets.chomp.downcase

until insurance == "yes" || insurance == "no"
	puts "Would you like to enroll in our health insurance plan? (yes or no)"
	insurannce = gets.chomp.downcase
end

