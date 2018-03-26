window.addEventListener( 'DOMContentLoaded', function() {
  // ------------------------------------------------------------
  // PHASE 1: GET MONSTER DATA FROM API AND ADD TO PAGE
  // ------------------------------------------------------------
  // Get button reference.
  var getMonstersButton = document.getElementById( 'get_monsters' );

  // Add event listeners.
  getMonstersButton.addEventListener( 'click', function() {
    console.log( 'BEFORE AJAX REQUEST' );

    // Make AJAX request here.
    var request = $.ajax( {
      url: 'http://monsters-api.herokuapp.com/monsters',
      method: 'GET',
      dataType: 'html',
    } );

    // `.done()` method allows us to handle cases where the request SUCCEEDS!
    request.done( function( data ) {
      console.log( 'REQUEST SUCCEEDED!' );
      console.log( data );

      // Add the data to document.
      var newElement = document.createElement( 'div' );
      newElement.innerHTML = data;

      document.body.appendChild( newElement );
    } );

    // `.fail()` method allows us to handle cases where the request FAILS!
    request.fail( function( request, status, error ) {
      console.log( 'REQUEST FAILED!' );

      // Create a new 'warning message' and add to document.
      var warningMessage = document.createElement( 'p' );
      warningMessage.innerText = 'Whoops, something went wrong!';
      warningMessage.style.color = 'red';

      document.body.appendChild( warningMessage );
    } );

    console.log( 'AFTER AJAX REQUEST' );
  } );


  // ------------------------------------------------------------
  // PHASE 2: SEND MONSTER DATA TO API
  // ------------------------------------------------------------
  var postMonsterButton = document.getElementById( 'post_monster' );

  postMonsterButton.addEventListener( 'click', function() {

    var request = $.ajax( {
      url: 'http://monsters-api.herokuapp.com/monsters',
      method: 'POST',
      data: {
        monster: {
          name: 'Frankenberry',
          home: 'General Mills Cerealbox',
          creepiness: 0,
        }
      }
    } ).done( function() {
      console.log( 'POST REQUEST SUCCEEDED!' );
    } ).fail( function() {
      console.log( 'POST REQUEST FAILED!' );
    } );

  } );
} );
