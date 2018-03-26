document.addEventListener('DOMContentLoaded', function() {
  // Function scope

  // var num = 10;
  // var num2 = 50;
  // var num100 = 42;

  var count = 0,
      colors = ['tomato', 'azure', 'green', 'orange', 'purple', 'chartreuse', 'gold', 'fuschia'];

  var container = document.querySelector('#container');

  var boxMaker = document.querySelector('#box-maker');

  // Delegated Event Handler
  // Bind event to a parent element
  container.addEventListener('click', function(event) {
    if (event.target.classList.contains('circle')) {
      event.target.remove();
    }
  });

  boxMaker.addEventListener('click', function() {
      var x = Math.ceil(Math.random() * 400),
          y = Math.ceil(Math.random() * 200),
          c = Math.ceil(Math.random() * 7);

      var circle = document.createElement('div');

      circle.className = 'circle';

      circle.style.top = y + 'px';
      circle.style.left = x + 'px';
      circle.style.backgroundColor = colors[c];

      circle.innerHTML = count++;

      // Can use `this` or `event`
      // circle.addEventListener('click', function(event) {
      //  this.remove();
      //  event.target.remove();
      // });

      container.append(circle);

      console.log('link was clicked');
  });

  // DID NOT WORK - circles are not rendered on page load, they're added dynamically
  // var circles = document.querySelectorAll('.circle');
  //
  // circles.forEach(function(circle) {
  //   circle.addEventListener('click', function(e) {
  //     e.target.remove();
  //     // this.remove();
  //   });
  // });
});


















// Solutions:
// 1. Select all `.circle` with `querySelectorAll`
//    Iterate through them to `addEventListener`

// 2. Add listener each time a circle is made
//    Can use `this` or `target` property

// 3. Delegated Event Handler
//    bind event to a parent element (`.container`)
//    Check if the e contains the desired class
//    Remove ele
