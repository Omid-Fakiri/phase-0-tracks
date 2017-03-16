=begin
This is the algorithm for the code:
- The user will be asked to input all of the information via the gets.chomp method.
- Symbols such as "address:" (without the quotes) will be used in the program as input data.
- The output will be returned as a hash.
- The user will have an opportunity to update the client's details with an if/else statement.
=end

client_info  = {
	name: "",
	age: "",
	address: "",
	email: "",
	phone: "",
	number_of_children: "",
	number_of_rooms: "",
	decor_theme: ""
}

p "What is the client's name?"
client_info[:name] = gets.chomp

p "How old is #{client_info[:name]}? (Please just the type age in digits)"
client_info[:age] = gets.chomp

p "What is the address for #{client_info[:name]}?"
client_info[:address] = gets.chomp

p "What is #{client_info[:name]}'s email address?"
client_info[:email] = gets.chomp

p "What is #{client_info[:name]}'s phone number?"
client_info[:phone] = gets.chomp

p "How many children does #{client_info[:name]} have? (Please just type the number of children in digits)"
client_info[:number_of_children] = gets.chomp

p "How many rooms does #{client_info[:name]} have? (Just type the number of rooms in digits)"
client_info[:number_of_rooms] = gets.chomp

p "What is the desired decor theme for #{client_info[:name]}?"
client_info[:decor_theme] = gets.chomp

p client_info