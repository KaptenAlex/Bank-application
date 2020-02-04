<?php
include 'setupAPI.php';
include "../classes/UsersClass.php";

$mySQL = new MySQL();
$newUser = new Users($mySQL);
echo $newUser->getAllUsers();
