=begin
PSEUDOCODE FOR THE CODE:
-The hash should have the keys set as symbols to avoid strings and =>.
-The hash should have the values set to "".
PSEUDOCODE FOR THE USER INTERFACE (DRIVER CODE):
-The user will be asked questions that will fill out each value.
-Some answers should be number-specific.
-After each question is answered, the hash will be printed out.
-Ask the user which key(s) needs to be updated.
-If the user selects a key, give the user a chance to update it.
-Ask the user for further updates.
-If the user doesn't need an update, exit the program
=end


client_info = {
	name: "",
	age: "",
	address: "",
	phone: "",
	email: "",
	kids: "",
	rooms: "",
	decor_theme: "",
}

#These are the statements that the user will see, and provide input for each statement when instructed.
#It became useful to have the hashname with the desired value inside of the bracket equalling to gets.chomp in order to update that specific hash.

p "What is the client's name?"
client_info[:name] = gets.chomp

#Using the gets.chomp.to_i would enforce the idea of the user to enter the age in digits.  If a user does otherwise, the return value is 0.
#Thus, obligating the user to re-enter the data in digits.  This method will also be used for number of children, and number of rooms.
#This will make the hash easier to read, as there is no need to make this answer into a sentence.

p "How old is #{client_info[:name]}? (Please just type age number.)"
client_info[:age] = gets.chomp

p "What is the address for #{client_info[:name]}?"
client_info[:address] = gets.chomp

p "What is #{client_info[:name]}'s phone number?"
client_info[:phone] = gets.chomp

p "What is #{client_info[:name]}'s email address?"
client_info[:email] = gets.chomp

p "How many kids does #{client_info[:name]} have? (Please just type the number.)"
client_info[:kids] = gets.chomp.to_i

p "How many rooms does #{client_info[:name]} have? (Please just type the number.)"
client_info[:rooms] = gets.chomp.to_i

p "What is the desired decor theme for #{client_info[:name]}?"
client_info[:decor_theme] = gets.chomp

puts "" #This will provide spacing between the questions and the client hash, which makes everything easier to read.

p client_info

puts "" #This will provide spacing between the hash and the question asking the user if updates are needed.

###################################################################################################################################################

loop do
	puts ""

	p "Please list any additional corrections/updates that are needed for #{client_info[:name]}."
	input = gets.chomp
	puts ""
	break if input == "done" || input == "none"

	p "What would you like to change #{input} to?"
	input = input.to_sym
	client_info[input] = gets.chomp
	puts ""
end	

p client_info