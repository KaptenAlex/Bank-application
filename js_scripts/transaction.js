$(document).ready(function() {
    $("#transaction").on("submit", function(e) {
        e.preventDefault();
        $.ajax({
            type: "post",
            url: "http://localhost/Bank-application/api/makeTransaction.php",
            data: $("#transaction").serializeArray(),
            success: function(data) {},
            error: function(error) {
                console.log(error);
            }
        });
    });
});
