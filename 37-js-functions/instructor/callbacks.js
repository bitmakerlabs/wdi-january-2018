// Callbacks

var items = ['fork', 'spoon', 'knife'];

var itemOutputter = function(item) {
  console.log('--==' + item + '==--');
}

function itemOutputter(item) {
  console.log('--==' + item + '==--');
}

console.log(itemOutputter);

itemOutputter('Van Halen');

items.forEach(itemOutputter);

//
// function forEach(functionToCall) {
//   for (var i = 0; i < this.length; i++) {
//     var item = this[i]
//     functionToCall(item)
//   }
// }
