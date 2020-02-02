<?php
//So CORS Doesn't interfere.
header("Access-Control-Allow-Origin: *");

require '../vendor/autoload.php';
include "../classes/UsersClass.php";

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . "/../");
$dotenv->load();

$mySQL = new MySQL();
$user = new Users($mySQL);

echo($user->getUser(1));
