// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

document.addEventListener('DOMContentLoaded', function() {

    var form = document.querySelector('#new_todo');

   // $(form).on

    form.addEventListener('submit',function(e){

        e.preventDefault();

        $.ajax({
            url: form.getAttribute('action') ,
            method: form.getAttribute('method'),
            data: $(form).serialize(),
            dataType: 'html' // change this to JSON is you need the response as JSON
        }).done(function(data){

            console.log("Ajax successful !!");
            // clear the text input
            var input = document.querySelector('#todo_content');
            input.value = '';

            //to append the li response
            var myList = document.querySelector('#myList');
            //this is javascript version of  $(myList).append(data);

            myList.insertAdjacentHTML('beforeend', data)
            
            //
            //$(myList).append(data);
            //myList.innerHTML.append(data);
        //    var list = document.createElement("li");
        //    list.innerText = data.content;
        //    myList.appendChild(list);
            
        })

        console.log("Ajax request has been placed!");
        
    })
    
});