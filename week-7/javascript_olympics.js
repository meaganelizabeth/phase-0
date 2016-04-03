 // JavaScript Olympics

// I paired by myself on this challenge.

// This challenge took me [#] hours.


// Warm Up

var leBronJames =  {
	name: "LeBron James",
	event: "Basketball"
}

var jimThorpe = {
	name: "Jim Thorpe",
	event: "Track"
}

var michelleKwan = {
	name: "Michelle Kwan",
	event: "Figure Skating"
}



// Bulk Up

var athletes = [leBronJames, jimThorpe, michelleKwan]

var win = function(array){
	for (var i = 0; i < array.length; i++){
		console.log(array[i].name + " won while playing " + array[i].event)
	}
}
//driver code
win(athletes);

// Jumble your words

var testString = "JavaScript is not the worst"

var reverse = function(string){
	console.log(string.split('').reverse().join(''))
}
// driver code
reverse(testString);

// 2,4,6,8

var testArray = [1,2,3,4,5,6,7,8]

var evens = function(array){
	var newArray = [];
	for (i = 0; i < array.length; i ++){
		if (array[i]%2 == 0){
			newArray.push(array[i])
		}
	}
	console.log(newArray)
}
//driver code
evens(testArray);

// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name =name;
  this.age=age;
  this.sport=sport;
  this.quote=quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// This challenge solidified my knowledge of JavaScript syntax and how I
// should be applying it when I want to do execute something similar to how I
// would in Ruby. I definately have for loops down too.

// What are constructor functions?

// Constructor functions are functions that allow for the construction of
// multiple objects with a shared set of properties.

// How are constructors different from Ruby classes (in your research)?

// Ruby classes are a special type of Ruby object that have properties such as
// inheritence and their own set of built-in methods. Constructors are merely
// JavaScript functions that create other objects.
