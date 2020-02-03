// A $( document ).ready() block.
$(document).ready(function() {
    console.log("ready!");
    $.ajax({
        url: "http://localhost/Bank-application/api/getUserWithSession.php",
        type: 'GET',
        success: function(data) {
            let parsedData = JSON.parse(data);
            console.log(parsedData);
            $("#username").text(parsedData.username);
            $("#name").text(parsedData.firstName + " " + parsedData.lastName);
            $("#balance").text(parsedData.balance);
        },
        error: function(error) {
            console.log(error)
        },
    });
});
