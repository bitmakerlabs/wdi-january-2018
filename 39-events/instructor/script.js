// Let's add our first event handlers to this simple document
document.addEventListener('DOMContentLoaded', function() {

  // 1. Select the `click-bait` element
  var clickBait = document.querySelector('#click-bait');

  // 2. Add an event listener to clickBait and ...
  //    implement the callback with an anonymous function
  clickBait.addEventListener('click', function(event) {
    window.alert("I've been clicked");
    console.log(event);
    event.preventDefault();
  });


  // 3. Select the `second-level` element
  var secondLevel = document.querySelector('#second-level');

  // 4. Add an event listener to secondLevel and ...
  //    implement the callback with a function declaration


  secondLevel.addEventListener('click', secondLevelEventHandler);

  function secondLevelEventHandler(poop) {
    window.alert("Second level is clicked");
    poop.stopPropagation();
  }


  // 5. Select the `first-level` element
  var firstLevel = document.querySelector('#first-level');

  // 6. Add an event listener to firstLevel and ...
  //    implement the callback with a function definition
  var firstLevelEventHandler = function() {
    window.alert("First level is clicked!");
  };

  firstLevel.addEventListener('click', firstLevelEventHandler);


  // 7. Check out the `event` object:
  // => Google MDN addEventListener
  // => https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener

  // QQ: Our default behaviour of the link routes us to Google, can we stop the default behaviour?
  // (Check out preventDefault)

  // QQ: What default behaviours will you want to prevent typically? There are mainly 2:
  // (1. links ... 2. f o r m s!!! (ryhmes with torms lol) )

  // QQ: Can we stop the event from bubbling up the DOM?
  // => https://developer.mozilla.org/en-US/docs/Web/API/Event/stopPropagation

  // QQ: Does order of including our JavaScript matter?
  // DOMContentLoaded => https://developer.mozilla.org/en-US/docs/Web/Events/DOMContentLoaded
});
