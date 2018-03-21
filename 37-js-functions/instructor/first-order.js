// First-order functions

function breatheFire() {
  console.log('FIRE >>>>>>');
}

breatheFire();

function wrapFunction(functionToWrap) {
  console.log('TOP --------');
  functionToWrap();
  console.log('BOTTOM -----\n\n');
}

wrapFunction(breatheFire);
wrapFunction(function() {
  for (var i = 0; i < 5; i++) {
    console.log(i);
  }
})

function timeIntensiveFunction() {
  for (var i = 0; i < 1000000000; i++) {
    // console.log(i);
  }
}


function timeMe(functionToTime) {
  console.time('asdf')
  functionToTime();
  console.timeEnd('asdf')
}

// timeMe(timeIntensiveFunction)
// timeMe(function() {
//   for (var i = 0; i < 1000000000; i++) {
//     // console.log(i);
//   }
// })

function doMoreStuff() {
  setTimeout(function() {
    console.log('Second function ran');
  }, 2000)
}

function startSetTimeout(num) {
  setTimeout(function() {
    console.log(num);
    console.log('Function finally ran');
    // doMoreStuff()
    console.log('Another line of code');
  }, 2000)
}


// setInterval(function() {
//   console.log('Next interval');
// }, 2000)

function waitTwoSeconds() {
  console.log('Waiting...');
  for (var i = 0; i < 3; i++) {
    startSetTimeout(i)
    // setTimeout(function() {
    //   console.log(i);
    //   console.log('Function finally ran');
    //   // doMoreStuff()
    //   console.log('Another line of code');
    // }, 2000)
  }
  console.log('Done!');
}

waitTwoSeconds()

waitTwoSeconds.height = 160;

console.log(waitTwoSeconds.height);
console.log('0-0-0');











//
