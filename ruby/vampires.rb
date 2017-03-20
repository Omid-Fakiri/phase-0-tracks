
puts "How many employees will be interviewed?"
employees = gets.chomp.to_i

count = 0
while count < employees

	puts "What is your name?"
	user_name = gets.chomp.to_s

	puts "How old are you? (age number only)"
	age = gets.chomp.to_i

	puts "What year were you born? (year number only)"
	year = gets.chomp.to_i

	current_year = Time.now.year
	verified_age = current_year - year

	puts "We have some garlic bread in the cafeteria. Would you like some? (yes or no)"
	bread = gets.chomp.downcase

		until bread == "yes" || bread == "no"
			puts "We have some garlic bread in the cafeteria. Would you like some? (yes or no)"
			bread = gets.chomp.downcase
		end

	puts "Would you like to enroll in our health insurance plan? (yes or no)"
	insurance = gets.chomp.downcase

		until insurance == "yes" || insurance == "no"
			puts "Would you like to enroll in our health insurance plan? (yes or no)"
			insurance = gets.chomp.downcase
		end



	if user_name == "Drake Cula" || user_name == "Tu Fang"
		puts "Definitely a vampire."
	elsif (age == verified_age || age == verified_age - 1) && (bread == "yes" || insurance == "yes")
		puts "Probably not a vampire."
	elsif (age != verified_age && age != verified_age - 1) && (bread == "yes" || insurance == "yes")
		puts "Probably a vampire."
	elsif (age != verified_age && age != verified_age - 1 && bread == "no" && insurance == "no") 
		puts "Almost certainly a vampire."
	else
		puts "Results inconclusive."
	end 

	count += 1
end