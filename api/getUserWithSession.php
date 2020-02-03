<?php
header("Access-Control-Allow-Origin: *");

require '../vendor/autoload.php';
include "../classes/UsersClass.php";

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . "/../");
$dotenv->load();

$mySQL = new MySQL();
$newUser = new Users($mySQL);
echo $newUser->getUser(1);
