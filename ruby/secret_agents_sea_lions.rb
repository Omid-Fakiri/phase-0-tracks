=begin
 -This is for Release 0
 * Scope means area in which the variables assigned in them are known and/or visible. 
 * Local Variable is a variable whose name begins with a lowercase letter (a-z) or underscore (_) is a local variable or method invocation.
 * A local variable is only accessible from within the block of its initialization. 
 * Global Variable is a variable whose name begins with '$' has a global scope; meaning it can be accessed from anywhere within the program during runtime.
 * Implicit Return is when Ruby returns the last value evaluated.
 * Side Effects of a method are any observable change caused by calling a function. 
   However, a Return Value will allow one to break out of a method immediately.
 * If a method is called after being written inside another method, an error message will occur.
 =end


 =begin
 -This is for Release 1
 * "agent"[0] retuned "a"
 * "agent"[1] returned "g"
 * "agent"[1..3] returned "gen"
 * "agent"[1...3] returned "ge"
 * str = "abcdef"
   str[3] returned "d"
 * "mission"[-1] returned "n"
 * "mission"[-2] returned "o"
 * "agent".index("a") returned "0"
 * "agent".index("z") returned "nil"
 * "agent".delete("g") returned "aent"
 * "mission".delete("s") returned "miion"
 * "agent".delete("age") returned "nt"
 * "agent".delete("mission") returned "aget"
 * "a".next returned "b"
 * "a".next.next.next returned "d"
 * "z".next returned "aa"
 * "secret".reverse returned "terces"
 * "z".length returned "1"
 * "FBI".length returned "3"
 * "secret" + "agent" returned "secretagent"
 * word = "hi"
   word += "there" returned "hithere"
 * test = "string"
   test.reverse
   test returned "string"
   reversed_str = test.reverse returned "gnirts"	
 * test2 = "another string"
   test2.reverse!
   test2 returned "gnirts rehtona" (This is considered a dangerous thing to do)
=end

=begin
-This is for Release 2

PSEUDOCODE for encrypt:
-The .next method would not work, as typing in "z" would lead to "aa" (see line 32)
-define the encrypt method (with str as the parameter)
-set the index to 0
-establish the place variable as the actual alphabet, but add "a" to the end


#Will advance every string by the next index.
def encrypt(str)
    letters = str.split('')
    letters.each do |letter|
        print letter.next
        str = letters.join('')
    end
end

PSEUDOCODE for decrypt:
-define the decrypt method (with str as the parameter)
-set the index to 0
-establish the place variable as the actual alphabet.


#Will advance every string by the previous index.
def decrypt(str)
    letters = str.split('')
    letters.each do |letter|
        print (letter.ord-1).chr
        str = letters.join('')
    end
end

This is for Release 3
The intent here is to provide the .each, .map, and .map! methods in order to make this work.
The .map! will be the uncommented out methods.

These methods uses the .map

def encrypt(str)
  letters = "abcdefghijklmnopqrstuvwxyz"
  array = str.split('')
  array_new = array.map do |letter|
    if letter == letters[25]
      letter = letters[0]
    else
      letter.next
    end
  end
  array_new.join
end

def decrypt(str)
  letters = "abcdefghijklmnopqrstuvwxyz"
  array = str.split('')
  array_new = array.map do |letter|
    if letter == letters[0]
      letter = letters[25]
    else
      (letter.ord-1).chr
    end
  end
    array_new.join
end
=end
#These methods uses the .map!

def encrypt(str)
  letters = "abcdefghijklmnopqrstuvwxyz"
  array = str.split('')
  array.map! do |letter|
    if letter == letters[25]
      letter = letters[0]
    else
      letter.next
    end
  end
  array.join
end

def decrypt(str)
  letters = "abcdefghijklmnopqrstuvwxyz"
  array = str.split('')
  array.map! do |letter|
    if letter == letters[0]
      letter = letters[25]
    else
      (letter.ord-1).chr
    end
  end
  array.join
end

=begin
These methods uses the .each

def encrypt(str)
  letters = "abcdefghijklmnopqrstuvwxyz"
  new_letters = []
  array = str.split('')
  array.each do |letter|
    if letter == letters[25]
      letter = letters[0]
      new_letters << letter
    else
      new_letters << letter.next
    end
  end
  new_letters.join
end


def decrypt(str)
  letters = "abcdefghijklmnopqrstuvwxyz"
  new_letters = []
  array = str.split('')
  array.each do |letter|
    if letter == letters[0]
      letter = letters[25]
      new_letters << letter
    else
      new_letters << (letter.ord-1).chr
    end
  end
  new_letters.join
end

# encrypt("abc") #returned "bcd"
# encrypt("zed") #returned "afe"
# decrypt("bcd") #returned "abc"
# decrypt("afe") #returned "zed"

This is for Release 4
Calling decrypt(encrypt("swordfish")) worked because it took the string result of
the first method and inputted it into the next method.
So, it provided 2 results.  The first result was "txpsegjti", which is the encrypt of swordfish.
The second result was "swordfish", which is the decrypt of the first result.



This is for Release 5
=end

#DRIVER CODE
#Asks a user whether encrypting or decrypting is desired
puts "Would you like to encrypt or decrypt your password?"
answer = gets.chomp

#If the user answers something else, ask the user again until given a proper option.
until answer == "encrypt" || answer == "decrypt"
	puts "That was not a proper response."
	puts ""
	puts "Would you like to encrypt or decrypt your password?"
	answer = gets.chomp
end

#Ask the user for the password
puts "Enter your password:"
password = gets.chomp

#Alter the password, based on the user's answer to the first question, and print it out to the screen.
if answer == "encrypt"
	puts "Here is your new password: #{encrypt(password)}"
else
	puts "Here is your new password: #{decrypt(password)}"
end