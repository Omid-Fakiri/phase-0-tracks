/*This is for Release 0
PSEUDOCODE:
-Create a variable called "arrray", and place the 3 phrases in the example inside the bracket.
-Create an if/else if/else statement to return the array that has the highest .length value.
-Place the driver code (arrays) above the code in order to test the functionality of the code.
*/

var array = ["long phrase","longest phrase","longer phrase"]; //returned "longest phrase" (On index 1)
var array = ["Warriors", "49ers", "Athletics"]; //returned "Athletics" (On index 2)
var array = ["Web Development", "Live TV", "Small Gigs"]; //returned "Web Development" (On index 3)

if (array[0].length > array[1].length && array[0].length > array[2].length) {
  console.log(array[0]);
} else if (array[1].length > array[0].length && array[1].length > array[2].length) {
  console.log(array[1]);
} else {
  console.log(array[2]);
}


