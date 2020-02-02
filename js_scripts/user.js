// A $( document ).ready() block.
$(document).ready(function() {
    console.log("ready!");
    ajax({
        url: "http://localhost/Bank-application/classes/UsersClass.php",
        type: "GET",
        contentType: "application/json"
    })
});
