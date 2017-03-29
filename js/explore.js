/*This is for Release 0
1. The equivalent of nil in JavaScript is "null" on the input.  And, it looks like the output will be "undefined".
2. It is a good idea to use var, simply to avoid making the variable a global one, making it susceptable to being equal to something different in 
the program.
As far as I know right now, in Ruby, you can use signs like @ or $, to label the variables as instance and global, respectfully.  
Right now, I don't know if there are such options in JavaScript.
3. In JavaScript, you use, "+ variableGoesHere" to print a variable.  You also use console.log("Print statement here") to print something.
4. In JavaScript, you end a line of code with the ";" symbol.
5. In JavaScript, you write single-line comments by using "//".  But, you can use "/*" to start a multi-line comment section, and end it with the reverse
of the characters. If I do it now, I will lose the comment capability here, and the aesthetics will not be as pleasing even if I make the necesssary 
fixes.

This is for Release 1
Comparing if/else statements.
3 differences from JavaScript to Ruby:
1) In JavaScript, when you set conditional statements with variables, you MUST use parenthesis around the variables.  In Ruby, it is optional.
You will get an error message if you don't do it in JavaScript.
2) In JavaScript, you MUST have {} at the beginning and end of your conditional statements.  This is not needed in Ruby.
3) In JavaScript, when you want to use and else if conditional, you write, "else if".  In Ruby, you write, "elsif".

This is for Release 2
1) In JavaScript, you would type "function" before declaring it.  In ruby, you would declare methods by typing "def".  Also, in JavaScript, you do NOT 
need an "end" statement for the functions.
2) JavaScript do not have implicit returns.  When I deleted the "return" keyword, the console printed "undefined".
3) When I took away the parenthesis from the function, I got "SyntaxError: Unexpected token, expected" printed to the console.
4) You won't necessarily need to parenthesis in the function call to prevent error messages.  You'll just get something like this to the output, 
"=> [Function: sayHello]."  I just don't know how crucial this becomes for a program to be run.


