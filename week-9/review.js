// 9.2 JavaScript Grocery List

// Pseudocode

// Write functions that edit a grocery list:
// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list 

// Function that creates a new list
//  Input: string of items
//  Output: list object with items as properties with values of 1
//  Steps:
//    declare makeList function that takes string of ITEMS as argument
//    generate empty list object
//    split string into an array of items
//    add each item as property in list object
//    give each item a value of one
//    return list object
// 

// Function that adds item to a list
//  Input: item, quantity, list item to be added to
//  Output: modified list
//  Steps:
//    declare addItem function that takes item, quantity, and list as arguments
//    IF item is already a property of list
//      update item quantity
//    ELSE
//      item becomes list property; quantity becomes item value
//  return list

// Function that removes an item from a list
//  Input: item, list item to be removed from
//  Output: modified list
//  Steps:
//    declare removeItem function that takes item, list as arguments
//    IF item is already a property of list
//      remove item from list object
//    ELSE
//      tell user "That item is not on your list"
//  return list

// Function that updates item quantitiy
//  Input: item, quantity, list item belongs to
//  Output: modified list
//  Steps:
//    declare updateItem function that takes item, quantity, and list as arguments
//    IF item is already a property of list
//      item value is quanity
//    ELSE
//      tell user "That item wasn't on your list, but is now"
//      item becomes list property; quantity becomes item value
//  return list

// Function that prints list
//  Input: list to be printed
//  Output: items and quanitys of list printed to the console
//  Steps:
//    declare printList function that takes list as argment
//    print items and quatities of list to the console


// Solution

// Create a new list
var makeList = function(items){
  var list = {};
  var array = items.split(" ");
  for (var i in array){
    list[array[i]] = 1;
  }
  return list
}


// Add an item with a quantity to the list

var addItem = function(item, quantity, list){
  if (list.hasOwnProperty(item)){
    list[item] += quantity;
  } else {
    list[item] = quantity;
  }
  return list
}

// Remove an item from the list

var removeItem = function(item, list){
  if (list.hasOwnProperty(item)) {
    delete list[item];
  } else {
    console.log("That item is not on your list.")
  }
  return list
}

// Update quantities for items in your list

var updateItem = function(item, quantity, list){
  if (list.hasOwnProperty(item)){
    list[item] = quantity;
  } else {
    list[item] = quantity;
    console.log("This item was not on your list, but it is now.");
  }
  return list
}

// Print the list (Consider how to make it look nice!)

var printList = function(list){
  console.log("Here is your grocery list:");
  for (var i in list){
    console.log(i + ": " + list[i]);
  }
}

//driver code

var myList = makeList("cheese eggs milk")
addItem("pizza", 2, myList)
removeItem("milk", myList)
updateItem("eggs", 3, myList)
printList(myList)




// Reflaction

// What concepts did you solidify in working on this challenge? (reviewing the
// passing of information, objects, constructors, etc.)

// In working on this challenge I solidified the concepts of writing
// JavaScript functions and using them to modify objects. There was also some
// basic flow control thrown in for good measure.

// What was the most difficult part of this challenge?

// The most difficult part of this challenge was dusting off the cobwebs of my
// knowledge of JavaScript syntax. My fist attempt at writing the makeList
// function failed because I missed a few brackets and braces and therefore
// took me a while to write. Subsequent functions were written with ease.

// Did an array or object make more sense to use and why?

// Using an object made more sense for this challenge so that list items could
// act as the object's properties and item quantities could act as values.



