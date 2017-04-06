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
=end

def encrypt(str)
	index = 0
	place = "abcdefghijklmnopqrstuvwxyza" #putting an "a" at the end enables "z" to be read as "a" during the call that includes "z".
	while index < str.length #uses .length to loop through the string that is called
		letter = str[index] #establishes labeling each index of the string
		alphabet = "abcdefghijklmnopqrstuvwxyz".index(letter) #enables letter to be called out by it's index number.
		str[index] = place[alphabet + 1] #takes the letter called in str, and advances it to the next index.
		index += 1 #prevents the program from being locked up.
	end
	p str #enables an output based on the call
end

=begin
PSEUDOCODE for decrypt:
-define the decrypt method (with str as the parameter)
-set the index to 0
-establish the place variable as the actual alphabet.
=end

def decrypt(str)
	index = 0
	place = "abcdefghijklmnopqrstuvwxyz"
	while index < str.length #uses .length to loop through the string that is called
		letter = str[index] #establishes labeling each index of the string
		alphabet = place.index(letter) #enables letter to be called out by it's index number.
		str[index] = place[alphabet - 1] #takes the letter called in str, and advances it to the previous index. 
		index += 1 #prevents the program from being locked up.
	end
	p str #enables an output based on the call
end


