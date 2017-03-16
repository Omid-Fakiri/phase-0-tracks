=begin
This is the algorithm for the code:
- The input hash will be set with empty values.
- Symbols such as "address:" (without the quotes) will be used in the program as input data.
- The user will be asked to input all of the information via the gets.chomp method.
- The output will be returned as a hash.
- The user will have an opportunity to update the client's details with an if/else statement.
=end

=begin
Here is the hash. Even though a clean look really applies for the user rathan than the programmer, I felt that it wouldn't hurt to put the colon after
the key to make it easier to read for a programmer. I just feel that putting a colon in front of the key, and then adding a hash rocket was a) not 
aesthetically pleasing, and b) one extra unnecessary step. Doing this style eliminated the need for a hash rocket.
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


#These are the statements that the user will see, and provide input for each statement when instructed.
#It became useful to have the hashname with the desired value inside of the bracket equalling to gets.chomp in order to update that specific hash.
p "What is the client's name?"
client_info[:name] = gets.chomp

#Using the gets.chomp.to_i would enforce the idea of the user to enter the age in digits.  If a user does otherwise, the return value is 0.
#Thus, obligating the user to re-enter the data in digits.  This method will also be used for number of children, and number of rooms.
p "How old is #{client_info[:name]}? (Please enter age in digits)"
client_info[:age] = gets.chomp.to_i

p "What is the address for #{client_info[:name]}?"
client_info[:address] = gets.chomp

p "What is #{client_info[:name]}'s email address?"
client_info[:email] = gets.chomp

p "What is #{client_info[:name]}'s phone number?"
client_info[:phone] = gets.chomp

p "How many children does #{client_info[:name]} have? (Please enter the number of children in digits)"
client_info[:number_of_children] = gets.chomp.to_i

p "How many rooms does #{client_info[:name]} have? (Please enter the number of rooms in digits)"
client_info[:number_of_rooms] = gets.chomp.to_i

p "What is the desired decor theme for #{client_info[:name]}?"
client_info[:decor_theme] = gets.chomp

p client_info

#The line of equal signs will make it easy for the user to read the hash output, check the hash output, and then read/process any updates from the next
#statement.
p "==================================================================================================================================================================================="

#It was critical to set strings as values for the keys to update. Ex: typing in "name" to answer the question below will lead to updating the :name value. 
#I am aware of the .to_sym method.  But, found this style more effective.

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
