/*
-This is for Release 0

1. In JavaScript, "null" is the equivalent to "nil" in Ruby.
2. It is a good idea to use var, simply to avoid making the variable a global one, making it susceptable to being equal to something different in 
the program.
As far as I know right now, in Ruby, you can use signs like @ or $, to label the variables as instance and global, respectfully.  
Right now, I don't know if there are such options in JavaScript.
3. In JavaScript, you use "console.log()" and add the "+" in front of the variable.
4. In JavaScript, you use ";" to end a line of code.
5. In JavaScript, you use "//" to write comments. But, you can use "/*" to start a multi-line comment section, and end it with the reverse
of the characters. If I do it now, I will lose the comment capability here, and the aesthetics will not be as pleasing even if I make the necesssary 
fixes.



-This is for Release 1

Three differences between JavaScript and Ruby in regards to If Statements:
1. For JavaScript, you MUST use parentheses to surround your variables in the conditional statements.  However, in Ruby, that is an option.

2. In Javascript, the else if statement is worded, "else if". In Ruby, the statement is "elsif".

3. In Javascript, there is no "end" statement, whereas there is one in Ruby.



-This is for Release 2

1. Functions are declared with the "function" keyword.
2. Javascript does not have implicit returns.  Any attempts will return "undefined".
3. The parentheses is required to help declare a function. Otherwise, you get a "syntax error: unexpected token, expected (".
4. If you take out the parentheses from the function call, the code will not execute.  There will not be an error message, it just won't execute.



-This is for Release 3

1. 

for (var number = 0; number <= 10; number++) {
  console.log(number);
}
This counts from 0 to 10.

2. Changing the incrementer from ++ to +=2 will count the even numbers up to 10.

3. 

for (var number = 10; number >= 0; number--) {
  console.log(number);
}
This counts down from 10 to 0



-This is for Release 4

2. Create a function.
	 Split the string into an array.
	 Reverse the array.
	 Join the array to reconvert it into a string.

3. 
*/
function reverse(s) {
  return s.split('').reverse().join('');
}

console.log(reverse("hello"));
//This reverses the string from "hello" to "olleh".