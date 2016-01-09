// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Eddie G.
// This challenge took me 2 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// iterate over the object votes
// check if the name is a value for the relevant key in vote count
// if name is not a value in vote count, 
// add it to vote count as a property and give it a value of one
// if name is a value in vote count, increment the value by one
// once votes are tallied find greatest value for each position key, 
// add corresponding name to officers object


// iterate over voteCount
// declare a count variable 

// __________________________________________
// Initial Solution

// for (var voter in votes) {
//   if (votes.hasOwnProperty(voter)) {
//     var ballot = votes[voter];
//     for (var position in ballot) {
//       if (ballot.hasOwnProperty(position)) {
//         if (position == 'president') {
//           var name = ballot[position];
//           if (voteCount.president.hasOwnProperty(name)) {
//             voteCount.president[name] += 1
//           } else {
//             voteCount.president[name] = 1
//           }
//         }
//         if (position == 'vicePresident') {
//           var name = ballot[position];
//           if (voteCount.vicePresident.hasOwnProperty(name)) {
//             voteCount.vicePresident[name] += 1
//           } else {
//             voteCount.vicePresident[name] = 1
//           }
//         }
//         if (position == 'secretary') {
//           var name = ballot[position];
//           if (voteCount.secretary.hasOwnProperty(name)) {
//             voteCount.secretary[name] += 1
//           } else {
//             voteCount.secretary[name] = 1
//           }
//         }
//         if (position == 'treasurer') {
//           var name = ballot[position];
//           if (voteCount.treasurer.hasOwnProperty(name)) {
//             voteCount.treasurer[name] += 1
//           } else {
//             voteCount.treasurer[name] = 1
//           }
//         }
//       }
//     }
//   }
// };
//
// // iterate over the voteCount object with for in loop
// // declare an empty string
// // Declare a top count variable at 0
// // Look at each value, compare it to the variable
// // if variable is larger, skip t onext value,
// // if value is greater, assign value as variable
// // return variable at end of offcer's object
//
// for (var position in voteCount) {
//   if (voteCount.hasOwnProperty(position)) {
//     var count = voteCount[position];
//     var winner = '';
//     var winnerCount = 0;
//     for (var name in count) {
//       if (count.hasOwnProperty(name)) {
//         if (count[name] > winnerCount) {
//           winnerCount = count[name];
//           winner = name;
//         }
//       }
//     }
//     officers[position] = winner;
//   }
// };
//
//
// __________________________________________
// Refactored Solution

for (var voter in votes) {
    var ballot = votes[voter];
    for (var position in ballot) {
    positionArray = ['president', 'vicePresident', 'secretary', 'treasurer'];
    for (var onePosition in positionArray) {
      var currentPosition = positionArray[onePosition]
      if (position == currentPosition) {
        var name = ballot[position];
        if (voteCount[currentPosition].hasOwnProperty(name)) {
          voteCount[currentPosition][name] += 1
        } else {
          voteCount[currentPosition][name] = 1
        }
      }
    }
  }
};


for (var position in voteCount) {
  var count = voteCount[position]; var winner = ''; var winnerCount = 0;

  for (var name in count) {
    if (count[name] > winnerCount) {
      winnerCount = count[name];
      winner = name;
    }
  }
  officers[position] = winner;

};


// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?

// I learned about using a combination of bracket notation and for...in loops
// to iterate over nested objects in Javascript. Iterating over nested objects
// in Javascript is definately tricky because once I get a couple objects deep
// I tend to start losing track of my brackets!

// Were you able to find useful methods to help you with this?

// Yes, the method .hasOwnProperty returns a boolean idicating whether or not
// an object has a given property. It was used when we wrote the code for
// tallying votes.

// What concepts were solidified in the process of working through this challenge?

// I feel like I really got some good practice accessing and modifying nested
// data in this challenge. Though it was difficult it felt like good practice.




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)






