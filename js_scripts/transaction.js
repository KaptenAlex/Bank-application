$(document).ready(function() {
    $("#transaction").on("submit", function(e) {
        e.preventDefault();
        let form = $("#transaction").serializeArray();
        $.ajax({
            type: "post",
            url: "http://localhost/Bank-application/api/makeTransaction.php",
            data: form,
            success: function(data) {
                $("#messages").text(data);
            },
            error: function(error) {
                console.log(error);
            }
        });
    });
});
