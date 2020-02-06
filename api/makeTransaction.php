<?php
include 'setupAPI.php';
include "../classes/TransactionsClass.php";

$mySQL = new MySQL();
$newTransaction = new Transactions($mySQL);
echo $newTransaction->makeTransaction($_POST);
