<?php
include 'setupAPI.php';
include "../classes/TransactionsClass.php";

$mySQL = new MySQL();
$newTransaction = new Transactions($mySQL);
$newTransaction->makeTransaction($_POST);
header("Location: http://localhost/Bank-application/views/index.php");
