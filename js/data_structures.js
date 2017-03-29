var colors = ["blue", "red", "green", "yellow"];
var horses = ["Ed", "Gus", "Sadie", "Secretariat"];
colors.push("purple");
horses.push("Seabiscuit");
console.log(colors);
console.log(horses);
stable = {};
for (var i = 0; i < horses.length; i++) {
  stable[horses[i]] = colors[i];
}
console.log(stable);

function Car(make, model, year) {
	console.log("This car is:", this);
	this.make = make;
	this.model = model;
	this.year = year;

	this.turn = function() { console.log("Engine on!"); };

	console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's build a car ...");

var anotherCar = new Car("Ford", "Mustang", 1968);
console.log(anotherCar);
console.log("This car works:");
anotherCar.turn();
console.log("----");

console.log("Let's build another car ...");
var yetAnotherCar = new Car("Volkswagon", "Bug", 1975);
console.log(yetAnotherCar.make);
console.log("This car works as well:");
yetAnotherCar.turn();
console.log("----");

