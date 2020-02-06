<?php
include 'setupAPI.php';
include "../classes/UsersClass.php";

$mySQL = new MySQL();
$newUser = new Users($mySQL);
/*
 Change getUser parameter to change user.
*/
echo $newUser->getUser(1);
