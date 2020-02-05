$(document).ready(function() {
    $("#transaction").on("submit", function(e) {
        let form = $("#transaction").serializeArray();
        $.ajax({
            type: "post",
            url: "http://localhost/Bank-application/api/makeTransaction.php",
            data: form,
            success: function(data) {},
            error: function(error) {
                console.log(error);
            }
        });
    });
});
