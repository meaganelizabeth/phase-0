// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var greetings = "Hello, world!";
console.log(greetings)

// Favorite food program
prompt("What\'s your favorite food?", "");
alert("Hey! That's my favorite too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// Looping a Triangle:

// with a while loop:
var string = "#"
var counter = 0
while (counter < 7) {
	console.log(string);
	string = string + "#";
	counter += 1;
}

// with a for loop:
var string = "#"
for (var counter = 0; counter < 7; counter += 1) {
	console.log(string);
	string = string + "#"
}

// FizzBuzz (for practice)

for (var number = 1; number <= 100; number += 1){
	if (number %3 == 0)
		console.log("Fizz");
	else if (number % 5 == 0)
		console.log("Buzz");
	else
		console.log(number);
}


// Functions

// Complete the `minimum` exercise.
function min(x, y) {
  if (x < y)
    return x;
  else
    return y;
}



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.