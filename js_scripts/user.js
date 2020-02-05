// A $( document ).ready() block.
$(document).ready(function() {
    $.ajax({
        url: "http://localhost/Bank-application/api/getUser.php",
        type: 'GET',
        success: function(user) {
            let parsedUser = JSON.parse(user);
            $("#username").text(parsedUser.username);
            $("#name").text(parsedUser.firstName + " " + parsedUser.lastName);
            $("#balance").text(parsedUser.balance);
            $("#userID").val(parsedUser.account_id);
            $.ajax({
                url: "http://localhost/Bank-application/api/getAllUsers.php",
                type: 'GET',
                success: function(users) {
                    let parsedUsers = JSON.parse(users);
                    $.each(parsedUsers, function(key, value) {
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
