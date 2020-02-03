<?php
header("Access-Control-Allow-Origin: *");

require '../vendor/autoload.php';
include "../classes/TransactionsClass.php";

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . "/../");
$dotenv->load();

$mySQL = new MySQL();
$newTransaction = new Transactions($mySQL);
$newTransaction->makeTransaction(/*ADD DATA*/);
header("Location: http://localhost/Bank-application/views/index.php")
