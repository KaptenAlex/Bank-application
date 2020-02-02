// A $( document ).ready() block.
$(document).ready(function() {
    console.log("ready!");
    $.ajax({
        url: "http://localhost/Bank-application/api/getUserWithSession.php",
        type: 'GET',
        success: function(data) {
            console.log(data)
        },
        error: function(error) {
            console.log(error)
        },
    });
});
