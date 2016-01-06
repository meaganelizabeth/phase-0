 // Design Basic Game Solo Challenge

// This is a solo challenge

 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Player must work out out until they can lift 500 pounds and catch a fly with their bare hands
// Goals: Do exercises, try to lift a dumbbell, player wins when dumbbell is lifted
// Characters: player (speed, strength)
// Objects: dumbbell (held, weight, slickness)
// Functions: exercise, liftDumbbell, checkFitness

// Pseudocode
// declare object player that will have properties speed and strength.
// declare object dumbbell that will have properties held, weight and slickness.
// write function workOut that takes an exercise (sit-up, push-up or jog) as an argument and increases player's speed or strength dependant on which exercise occurs
// write function checkFitness that prints the player's speed and strength and the dumbbell's weight and slickness to the console
// write function liftDumbbell that checks to see if player can lift the dumbbell by comparing player speed and strength and dumbbell weight and slickness

// Initial Code

// var player = {
//   speed: 0,
//   strength: 0
// }

// var dumbbell = {
//   held: false,
//   weight: 100,
//   slickness: 50
// }

// player.workOut = function(exercise) {
//   if (exercise === 'sit-up') {
//     player.strength += 10;
//   }
//   else if (exercise === 'push-up') {
//     player.strength += 25;
//   }
//   else if (exercise === 'jog') {
//     player.speed += 25;
//   }
// }

// player.checkFitness = function() {
//   console.log('Your speed is ' + player.speed + ' and your strength is ' + player.strength + '.');
//   console.log('The dumbbell is ' + dumbbell.slickness + ' units slick and weighs ' + dumbbell.weight + ' pounds.');
// }

// dumbbell.lift = function(){
//   if ((player.speed < dumbbell.slickness) || (player.strength < dumbbell.weight)){
//     dumbbell.held = false;
//     console.log('Sorry, you have to keep working out if you want to lift this dumbbell');
//   }
//   else if ((player.speed >= dumbbell.slickness) && (player.strength >= dumbbell.weight)){
//     dumbbell.held = true;
//     console.log('Congrats! You were strong and fast enough to life the dumbbell!');
//   }
// }

// workOut('sit-up')
// workOut('push-up')
// workOut('jog')
// checkFitness()
// liftDumbbell()
// workOut('sit-up')
// workOut('push-up')
// workOut('jog')
// checkFitness()
// liftDumbbell()
// workOut('sit-up')
// workOut('push-up')
// workOut('jog')
// checkFitness()
// liftDumbbell()



// Refactored Code

var player = {
  speed: 0,
  strength: 0
}

var dumbbell = {
  held: false,
  weight: 100,
  slickness: 50
}

player.workOut = function(exercise) {
  switch(exercise) {
  	case 'sit-up':
  		player.strength += 10;
  		break;
  	case 'push-up':
  		player.strength += 25;
  		break;
  	case 'jog':
  		player.speed += 25;
  		break;
  	default:
  		console.log("That is not a valid exercise. You should sit-up, push-up, or jog.");
  	}

  }

player.checkFitness = function() {
  console.log('Your speed is ' + player.speed + ' and your strength is ' + player.strength + '.');
  console.log('The dumbbell is ' + dumbbell.slickness + ' units slick and weighs ' + dumbbell.weight + ' pounds.');
}

dumbbell.lift = function(){
  if ((player.speed < dumbbell.slickness) || (player.strength < dumbbell.weight)){
    dumbbell.held = false;
    console.log('Sorry, you have to keep working out if you want to lift this dumbbell.');
  }
  else if ((player.speed >= dumbbell.slickness) && (player.strength >= dumbbell.weight)){
    dumbbell.held = true;
    console.log('Congrats! You were strong and fast enough to life the dumbbell!');
  }
}

player.workOut('go for a swim')
player.workOut('sit-up')
player.workOut('push-up')
player.workOut('jog')
player.checkFitness()
dumbbell.lift()
player.workOut('sit-up')
player.workOut('push-up')
player.workOut('jog')
player.checkFitness()
player.workOut('sit-up')
player.workOut('push-up')
player.workOut('jog')
player.checkFitness()
dumbbell.lift()






// Reflection
//
// What was the most difficult part of this challenge?
//
// The most difficult part of this challenge was more psychological than
// technical for me: I'm not as far along as I'd like to be with JavaScript
// and let the idea of having a fully interactive game get in the way of
// completing an mvp. Once I made peace with the fact that what I was
// submitting would just meet the minimum requirments I found writing
// functions and objects to be very straightforward.
//
// What did you learn about creating objects and functions that interact with
// one another?
//
// While creating objects and functions that interact with one another, it was
// interesting to see just how wide scope was for objects and variables
// declared outside of functions. I was always a little but suporised to see
// that I could access the properties of objects in functions written for
// other objects.
//
// Did you learn about any new built-in methods you could use in your
// refactored solution? If so, what were they and how do they work?
//
// I didn't incorporate any built-in methods in my refactoring but did
// substitute a switch for an if/else statement. I thought it made my program
// more readable and made it easy to write an error message.
//
// How can you access and manipulate properties of objects? 
//
// You can access and manipulate the properties of objects writing the
// properties when you first declare an object or creating, assessing, and
// manipulating the properties elsewhere in the code by using dot or bracket
// notation (object.propery = value; object['property'] = value)
//
//
//



