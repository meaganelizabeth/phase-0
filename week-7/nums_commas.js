// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Lauren Reid

// Pseudocode
// Input: the function would take a number
// Output: that number with commas placed appropriately
// Steps:
// 1. name function add_commas
// 2. recieve number as input
// 3. convert number to string and convert string to array
// 4. find the length of the array
// 5. use length to determine where commas are needed
// 6. convert new array back to string and return new string

// Initial Solution

// function add_commas(num_comma){
//   num_comma = num_comma.toString();
//   num_comma = num_comma.split("");
//   num_comma.reverse();
//   var num_array = []

//     for (var i = 0; i < num_comma.length; i ++ ) {
//     if ((i % 3 == 0) && (i != 0)) {
//       num_array.push(",");
//     }
//     num_array.push(num_comma[i]);
//   };
//   num_array.reverse();
//   var numCommas = num_array.join('');
//   return numCommas.toString();
// };



// Refactored Solution
function add_commas(num_comma){
  num_comma = num_comma.toString().split("").reverse();
  var num_array = []

    for (var i = 0; i < num_comma.length; i ++ ) {
    if ((i % 3 == 0) && (i != 0)) {
      num_array.push(",");
    }
    num_array.push(num_comma[i]);
  }
  num_array.reverse();
  var numCommas = num_array.join('').toString();
  return numCommas;
}




// Your Own Tests (OPTIONAL)
//driver code:
console.log(add_commas(12399999967))
console.log(add_commas(1239))
console.log(add_commas(123999))

// Reflection

// What was it like to approach the problem from the perspective of
// JavaScript? Did you approach the problem differently?

// Approaching the problem from the perspective of JacaScript took a little
// getting used to and did not come easily. I spent a lot of time taking a
// look at my previous solution for this challenge and trying to translate it,
// which took some time.

// What did you learn about iterating over arrays in JavaScript?

// Iterating over arrays in JavaScript is very similar to iterating over
// arrays in Ruby, with some minor but very important syntactical differences.

// What was different about solving this problem in JavaScript?

// Solving this problem in Javascript required different syntax for defining
// and utilizing local variables while iterating over and manipulating a given
// array.

// What built-in methods did you find to incorporate in your refactored solution?

// We used some built-in methods in our initial solution, such as split and
// join, but our refactored solution is just our initial solution with
// slightly cleaner code.
