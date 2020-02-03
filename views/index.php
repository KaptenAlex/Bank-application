<?php
//So CORS Doesn't interfere.
//header("Access-Control-Allow-Origin: *");
    ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Bank application</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>

<div class="container">
    <h1 class="text-center display-3">Bank application</h1>
<div class="row">
<div class="col border border-dark">
<h1>Username: <span id="username"></span></h1>
<h1>Name: <span id="name"></span></h1>
<h1>Balance: <span id="balance"></span></h1>
<div class="transfer">
    <h1>Make a transfer</h1>
    <form action="index.html" method="post">
        <div class="amount">
            <label class="h1" for="transferAmount">Transfer amount</label>
            <input class="form-control" type="number" name="transferAmount" value="">
        </div>
        <br>
        <div class="reciever">
            <label class="h1" for="transferTo">Transfer to</label>
            <select class="form-control" name="transferTo">
                <option value="">user 1</option>
            </select>
        </div>
        <br>
        <input class="btn btn-success btn-lg btn-block" type="submit" value="Transfer money">
    </div>
    </form>
</div>
<div class="col border border-dark">

</div>
</div>
</div>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="..\js_scripts\user.js" charset="utf-8"></script>
</body>

</html>
