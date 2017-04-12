# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an empty hash, name it "groceries".
  # create an array, name it "items."
  # do the "items.split"
  # iterate the items array with an each method 
  # and place each items inside the hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash with grocery items, quantities

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: 
	#name method with items parameter (add item)
	#pass the hash separately
	#use bracket notation to add key value pair
# output:

# Method to remove an item from the list
# input: list, item name, quantity
# steps: 
	#name method with items parameter (delete item)
	#delete key value pair from the list
# output:

# Method to update the quantity of an item
# input: list, item name, quantity
# steps:
	#name method with items parameter (update item, quantity update)
# output:

# Method to print a list and make it look pretty
# input: list
# steps: 
	#iterate through hash
	#print keys and values
# output:



items = "carrots apples cereal pizza"

def grocery_list(items)
	groceries = {}
	items_array = items.split
	items_array.each do |item|
		groceries[item] = 1
	end
	groceries
end

new_list = grocery_list(items)
#puts new_list

def add_item(list, item, quantity = 3)
	list[item] = quantity
end

#add_item(new_list, "oranges", 3)
#puts new_list

def delete_item(list, item, quantity)
	list.delete(item)
end

#delete_item(new_list, "cereal", 1)
#puts new_list

def update_item(list, item, quantity)
	list[item] = quantity
end

# update_item(new_list, "apples", 2)
# puts new_list

def final_list(list)
	puts "Grocery List"
	puts "*"*12
	list.each {|item_name, quantity| puts "#{item_name}: #{quantity}"}
end

list = grocery_list("")
add_item(list, "oranges", 3)
delete_item(list, "pizza", 1)
update_item(list, "apples", 2)
final_list(list)

#This is for Release 4
=begin
What did you learn about pseudocode from working on this challenge?
	I learned how to identify inputs and how to organize the codes.  I learned
	how to game-plan by using pseudocode, and not using actual code in the pseudocode.
What are the tradeoffs of using arrays and hashes for this challenge?
	I used arrays to organize our list of items.  And, I used hashes to attach the 
	quantity of each item.
What does a method return?
	A method would typically return the final line in it, unless an explicit return.
What kind of things can you pass into methods as arguments?
	Strings and Integers.
How can you pass information between methods?
	You can do this by having the methods contain at least 1 common parameter.
What concepts were solidified in this challenge, and what concepts are still confusing?
	Solidified: Being able to pass information between methods. 
	Confusing: How to implement hashes and arrays properly.
=end
