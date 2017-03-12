puts "What is your name?"
user_name = gets.chomp.to_s

puts "How old are you?"
age = gets.chomp.to_i 

puts "What year were you born?"
year = gets.chomp.to_i

current_year = 2017
verified_age = current_year - year

puts "Would you care for some garlic bread? (yes or no)"
bread = gets.chomp.downcase

until bread == "yes" || bread == "no"
	puts "Would you care for some garlic bread? (yes or no)"
	bread = gets.chomp.downcase
end

puts "Would you like to enroll in our insurance plan? (yes or no)"
insurance = gets.chomp.downcase

until insurance == "yes" || insurance == "no"
	puts "Would you like to enroll in our insurance plan? (yes or no)"
	insurance = gets.chomp.downcase
end

=begin
if (age == verified_age || age == verified_age - 1) && (bread == "yes" || insurance == "yes")
	puts "Probably not a vampire."
elsif (age != verified_age && age != verified_age - 1) || (bread == "no" && insurance == "yes") || (bread == "yes" && insurance == "no")
	puts "Probably a vampire."
elsif (age != verified_age && age != verified_age - 1) && (bread == "no" || insurance == "no")
	puts "Almost certainly a vampire."
elsif (user_name == "Drake Cula" || user_name == "Tu Fang")
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end
=end
#This takes care of probably not a vampire, probably a vampire, and results inconclusive portion

=begin
if (age == verified_age || age == verified_age - 1) && (bread == "yes" || insurance == "yes")
	puts "Probably not a vampire."
elsif (age != verified_age && age != verified_age - 1) && (bread == "yes" || insurance == "yes")
	puts "Probably a vampire."
elsif (age != verified_age && age != verified_age - 1) && (bread == "no" && insurance == "no")
	puts "Almost certainly a vampire."
elsif (user_name == "Drake Cula" || user_name == "Tu Fang")
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end
=end
#This takes care of the Almost certainly a vampire portion.
#puts (wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine - TRUE
#By using or, if either condition is true, the whole condition will still be false.

=begin
if (user_name != "Drake Cula" && user_name != "Tu Fang") && (age == verified_age || age == verified_age - 1) && (bread == "yes" || insurance == "yes")
	puts "Probably not a vampire."
elsif (user_name != "Drake Cula" && user_name != "Tu Fang") && (age != verified_age && age != verified_age - 1) && (bread == "yes" || insurance == "yes")
	puts "Probably a vampire."
elsif (user_name != "Drake Cula" && user_name != "Tu Fang") && (age != verified_age && age != verified_age - 1) && (bread == "no" && insurance == "no")
	puts "Almost certainly a vampire."
elsif (user_name == "Drake Cula" || user_name == "Tu Fang")
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end
=end
#This takes care of all the statements
if (user_name != "Drake Cula" && user_name != "Tu Fang") && (age == verified_age || age == verified_age - 1) && (bread == "yes" || insurance == "yes")
	puts "Probably not a vampire."
elsif (user_name != "Drake Cula" && user_name != "Tu Fang") && (age != verified_age && age != verified_age - 1) && (bread == "yes" || insurance == "yes")
	puts "Probably a vampire."
elsif (user_name != "Drake Cula" && user_name != "Tu Fang") && (age != verified_age && age != verified_age - 1) && (bread == "no" && insurance == "no")
	puts "Almost certainly a vampire."
elsif (user_name == "Drake Cula" || user_name == "Tu Fang")
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end