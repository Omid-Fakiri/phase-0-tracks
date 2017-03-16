=begin
This is the algorithm for the code:
- The input hash will be set with empty values.
- Symbols such as "address:" (without the quotes) will be used in the program as input data.
- The user will be asked to input all of the information via the gets.chomp method.
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

p "How old is #{client_info[:name]}? (Please enter age in digits)"
client_info[:age] = gets.chomp

p "What is the address for #{client_info[:name]}?"
client_info[:address] = gets.chomp

p "What is #{client_info[:name]}'s email address?"
client_info[:email] = gets.chomp

p "What is #{client_info[:name]}'s phone number?"
client_info[:phone] = gets.chomp

p "How many children does #{client_info[:name]} have? (Please enter the number of children in digits)"
client_info[:number_of_children] = gets.chomp

p "How many rooms does #{client_info[:name]} have? (Please enter the number of rooms in digits)"
client_info[:number_of_rooms] = gets.chomp

p "What is the desired decor theme for #{client_info[:name]}?"
client_info[:decor_theme] = gets.chomp

p client_info

p "==================================================================================================================================================================================="

p "Please list any corrections/updates for #{client_info[:name]}'s profile? (Please enter 'name', 'age', 'address', 'email', 'phone', 'kids', 'rooms', 'decor_theme', and/or 'none')"
input = gets.chomp
if input == "name"
	p "Update #{client_info[:name]}'s name here: " 
	client_info[:name] = gets.chomp
	p client_info
elsif input == "age"
	p "Update #{client_info[:name]}'s age here: " 
	client_info[:age] = gets.chomp 
	p client_info
elsif input == "address"
	p "Update #{client_info[:name]}'s address here: "
	client_info[:address] = gets.chomp
	p client_info
elsif input == "email"
	p "Update #{client_info[:name]}'s email address here: "
	client_info[:email] = gets.chomp		
	p client_info
elsif input == "phone"
	p "Update #{client_info[:name]}'s phone number here: "
	client_info[:phone] = gets.chomp
	p client_info
elsif input == "kids"
	p "Update #{client_info[:name]}'s number of kids here: "
	client_info[:number_of_children] = gets.chomp
	p client_info
elsif input == "rooms"
	p "Update #{client_info[:name]}'s number of here: "
	client_info[:number_of_rooms] = gets.chomp
	p client_info
elsif input == "decor_theme"
	p "Update #{client_info[:name]}'s decor theme here: "
	client_info[:decor_theme] = gets.chomp
	p client_info
elsif input == "none"
	p client_info
end
