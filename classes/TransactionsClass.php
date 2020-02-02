<?php

require '../vendor/autoload.php';
include 'MySqlClass.php';

class Transactions
{
    private $db;

    public function __construct(MySQL $mySQL)
    {
        $this->db = $mySQL->connect();
    }
    public function getAllTransactions()
    {
        $sql = "SELECT * FROM transactions";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        $results = $stmt->fetchAll();
        return $results;
    }
    public function getTransaction($id)
    {
        $sql = "SELECT * FROM transactions WHERE transaction_id = :id";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $result = $stmt->fetch();
        return $result;
    }
}

//$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . "/../");
//$dotenv->load();

//$mySQL = new MySQL();
//$transaction = new Transactions($mySQL);

//print_r($transaction->getAllTransactions());
//print_r($transaction->getTransaction(175));
