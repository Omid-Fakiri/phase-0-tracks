# Methods Declarations

# I will make a method that takes a string and take the length of the string
# I will create a loop that takes the letter of each letter in the string
# and outputs the next letter in the alphabet

def encrypt(str)
  alpha="abcdefghijklmnopqrstuvwxyza"
  index=0
  while index < str.length
    letter= str[index]
    place ="abcdefghijklmnopqrstuvwxyz".index(letter)
    str[index]=alpha[place+1]
    index += 1
  end
  p str
end


# I will make a method that takes a string and add the alphabet as a string
# inside the method. I will take the length and starting with the first letter
# I will find the place it belongs on the alphabet. I will then move it back one
# in the alphabet and output the full string.


def decrypt(str)
  alpha="abcdefghijklmnopqrstuvwxyz"
  index=0
  while index < str.length
    letter= str[index]
    place ="abcdefghijklmnopqrstuvwxyz".index(letter)
    str[index]=alpha[place-1]
    index += 1
  end
  p str
end

#encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")

# decrypt(encrypt("swordfish"))
# This nested method works because it takes the string result of the
#first method and inputs it into the next method.


#Driver Code
#I will ask the users if they want to encrypt or decrypt their password.
#I will store their answer and I will ask for their password.
#After storing their password, I will create a conditional if/else statement
#If they want to encrpyt, the encrypted password will be shown, if they
# want to decrypt, the decrypted password will be revealed. Otherwise,
# it will show an error sign.

repeat =nil
until repeat == "no"
	puts "Would you like to decrypt or encrypt a password?"
	choice = gets.chomp
	puts "What is your password?"
	password = gets.chomp

	if choice == "encrypt"
		encrypt(password)
	elsif choice== "decrypt"
		decrypt(password)
	else
		puts "Unable to carry out command"
	end
	puts "Would you like to repeat? (yes or no)"
	repeat =gets.chomp 
end