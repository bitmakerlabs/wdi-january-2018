// Basics

// Write a function that takes someone's order
function order(thing) {
  console.log("You've ordered " + thing);
  if (thing.length > 10) {
    return true;
  }
  return false;
}

// Call the function
var success = order('Tractor', 'Another Tractor');
console.log(success);

console.log(order);
var myFunction = order;
console.log(myFunction);
myFunction('Huge Tractor');

// console.log('\n-----\n');
//
// var order = function(thing) {
//   console.log("You've ordered " + thing);
//   if (thing.length > 10) {
//     return true;
//   }
//   return false;
// }
//
// var success = order('Tractor', 'Another Tractor');
// console.log(success);



// Questions:

// Can we assign a function to a variable?

// What happens if I reference the variable that contains the function?

// Can I call the function using normal function call syntax (with round brackets)?
