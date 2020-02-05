$(document).ready(function() {
    $("#transaction").on("submit", function(e) {
        e.preventDefault();
        let form = $("#transaction").serializeArray();
        let from_currency = form[1].value;
        getCurrency();

        function getCurrency() {
            $.ajax({
                type:'get',
                url: "https://api.exchangeratesapi.io/latest?base="+from_currency+"&symbols=USD",
                dataType: "json",
                success: function(data){
                    console.log(data);
                    postTransaction();
                },
                error: function(request,status) {
                    console.log(request);
                    console.log(status);
                }
            });
        }

        function postTransaction() {
            $.ajax({
                type: "post",
                url: "http://localhost/Bank-application/api/makeTransaction.php",
                data: form,
                success: function(data) {
                    console.log(form);
                },
                error: function(request, status) {
                    console.log(request);
                    console.log(status);
                }
            });
        }
    });
});
