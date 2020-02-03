// A $( document ).ready() block.
$(document).ready(function() {
    $.ajax({
        url: "http://localhost/Bank-application/api/getUserWithSession.php",
        type: 'GET',
        success: function(data) {
            let parsedData = JSON.parse(data);
            $("#username").text(parsedData.username);
            $("#name").text(parsedData.firstName + " " + parsedData.lastName);
            $("#balance").text(parsedData.balance);
            $("#userID").val(parsedData.id);
        },
        error: function(error) {
            console.log(error);
        },
    });
});
