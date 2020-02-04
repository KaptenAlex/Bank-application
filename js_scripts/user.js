// A $( document ).ready() block.
$(document).ready(function() {
    $.ajax({
        url: "http://localhost/Bank-application/api/getUser.php",
        type: 'GET',
        success: function(user) {
            let parsedData = JSON.parse(user);
            $("#username").text(parsedData.username);
            $("#name").text(parsedData.firstName + " " + parsedData.lastName);
            $("#balance").text(parsedData.balance);
            $("#userID").val(parsedData.id);
            $.ajax({
                url: "http://localhost/Bank-application/api/getAllUsers.php",
                type: 'GET',
                success: function(users) {
                    let parsedData = JSON.parse(users);
                    $.each(parsedData, function(key, value) {
                        $("#users").append("<option value=" + value.account_id +">"
                        + value.firstName +" " + value.lastName + "</option>");
                    });
                },
                error: function(errorForUser) {
                    console.log(errorForUser);
                }
            });
        },
        error: function(errorForUsers) {
            console.log(errorForUsers);
        },
    });
});
