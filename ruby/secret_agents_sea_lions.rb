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
=end
#This is for Release 3
def encrypt(str)
    letters = str.split('')
    encrpyted_phrase = ''
    letters.each do |letter|
        if letter == 'z'
            encrpyted_phrase << 'a'
        else
            encrpyted_phrase << letter.next
        end
    end
    p encrpyted_phrase
end

def decrypt(str)
    letters = str.split('')
    decrypted_phrase = ''
    letters.each do |letter|
        if letter == 'a'
            decrypted_phrase << 'z'
        else
            decrypted_phrase << (letter.ord-1).chr
        end
    end
    p decrypted_phrase
end
# encrypt("abc") #returned "bcd"
# encrypt("zed") #returned "afe"
# decrypt("bcd") #returned "abc"
# decrypt("afe") #returned "zed"
#the methods were written that avoided any edge cases.

=begin
This is for Release 4
Calling decrypt(encrypt("swordfish")) worked because it took the string result of
the first method and inputted it into the next method.
So, it provided 2 results.  The first result was "txpsegjti", which is the encrypt of swordfish.
The second result was "swordfish", which is the decrypt of the first result.
=end

=begin
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