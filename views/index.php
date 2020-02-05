<?php
//So CORS Doesn't interfere.
header("Access-Control-Allow-Origin: *");
    ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Sveriges Riksbank</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="../styles/style.css">
</head>

<body>

<div class="container">
    <h1 class="text-center display-3">Sveriges Riksbank</h1>
    <div class="text-center">
        <img class="img-fluid" src="../styles/images/threecrowns.jpeg" alt="Three crowns">
    </div>
<div class="row mrg-btm">
    <div class="col border border-dark rounded transaction">
        <h1 class="text-center mrg-btm">Make a transfer</h1>
        <div class="row">
            <div class="col">
                <h1 class="text-center margin">Username</h1>
                <h1 id="username" class="text-center mrg-btm"></h1>
            </div>
            <div class="col">
                <h1 class="text-center">Name</h1>
                <h1 id="name" class="text-center mrg-btm"></h1>
            </div>
            <div class="col">
                <h1 class="text-center">Balance</h1>
                <h1 id="balance" class="text-center mrg-btm"></h1>
            </div>
        </div>
<div class="transfer">
        <form id="transaction">
            <label hidden for="from_account"> From account</label>
            <input hidden id="userID" class="form-control" type="text" name="from_account" value="">
            <br>
            <label hidden for="from_currency"> From currency</label>
            <select hidden class="form-control" name="from_currency">
                <option value="SEK">SEK</option>
            </select>
            <br>
            <label hidden for="to_currency"> To currency</label>
            <select hidden class="form-control" name="to_currency">
                <option value="SEK">SEK</option>
            </select>
            <br>
            <label hidden for="currency_rate">Currency rate</label>
            <input hidden class="form-control" type="number" name="currency_rate" value="1.000">
            <br hidden>
            <label for="from_amount">Amount to transfer</label>
            <input class="form-control" type="number" name="from_amount" value="1">
            <br>
            <label hidden for="to_amount">to amount</label>
            <input hidden class="form-control" type="number" name="to_amount" value="1">
            <br hidden>
            <label for="to_account">Recipient</label>
            <select id="users" class="form-control" name="to_account">
            </select>
            <br>
            <input class="btn btn-success btn-lg btn-block" type="submit" value="Transfer money">
            <br>
</div>
        </form>
    </div>
</div>
</div>
    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"
     integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
     integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
     crossorigin="anonymous"></script>
    <script src="..\js_scripts\user.js" charset="utf-8"></script>
    <script src="..\js_scripts\transaction.js" charset="utf-8"></script>
</body>

</html>
