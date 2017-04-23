/*This is for Release 0
PSEUDOCODE:
-Create a variable called "array", and place the 3 phrases in the example inside the bracket.
-Create an if/else if/else statement to return the array that has the highest .length value.
-Place the driver code (arrays) above the code in order to test the functionality of the code.
*/

var array = ["long phrase","longest phrase","longer phrase"]; //returned "longest phrase" (On index 1)
var array = ["Warriors", "49ers", "Athletics"]; //returned "Athletics" (On index 2)
var array = ["Web Development", "Live TV", "Small Gigs"]; //returned "Web Development" (On index 3)

function calculate(array) {
  if (array[0].length > array[1].length && array[0].length > array[2].length) {
  console.log(array[0]);
} else if (array[1].length > array[0].length && array[1].length > array[2].length) {
  console.log(array[1]);
} else {
  console.log(array[2]);
}  
}

calculate(array);

/*This is for Release 1
PEUSOCODE:
-Use the following codes below as reference: 
===============================================================================
var isOver21 = true;
var drinksAlcohol = true;

if (isOver21 && drinksAlcohol) {
	console.log("Would you like a drink -- beer or wine, perhaps?");
} else if (isOver21 && !drinksAlcohol) {
	console.log("Can I get you an ice water, coffee, tea, or soft drink?");
} else {
	console.log("One Shirley Temple, coming up!");
===============================================================================
var dog = {name: 'Spot', 'age': 3, isGoodDog: true};

-Create variables called object_1 and object_2.
-Set object_1 and object_2 as parameters in the function
-set the if conditional statement to have either the first key's values to equal one another
or the second key's value to equal one another to return true.
-Otherwise, return false.*/