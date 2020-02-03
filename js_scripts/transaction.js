$(document).ready(function() {
            $("#transaction").submit(function(event) {
                event.preventDefault();
                    $.ajax({
                            type: 'POST',
                            url: "http://localhost/Bank-application/api/transferFromToUser.php",
                            data: $("#transaction").serialize()),
                        success: function(data) {
                            console.log(data);
                        },
                        error: function(error) {
                            console.log(error);
                        },
                    });
            });
