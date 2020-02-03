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
    public function makeTransaction($data)
    {
        //transaction_id, from_amount, from_account,
        //from_currency, to_amount, to_account,
        //to_currency, currency_rate, date
        $sql = "INSERT INTO transactions(from_amount, from_account, from_currency," .
               " to_amount, to_account, to_currency, currency_rate, date)".
               "VALUES (:fromAmount, :from_account, :from_currency," .
               ":to_amount, :to_account, :to_currency, :currency_rate, :date)";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':from_amount', $data);
        $stmt->bindParam(':from_account', $data);
        $stmt->bindParam(':from_currency', $data);
        $stmt->bindParam(':to_amount', $data);
        $stmt->bindParam(':to_account', $data);
        $stmt->bindParam(':to_currency', $data);
        $stmt->bindParam(':currency_rate', $data);
        $stmt->bindParam(':date', $data);
        $stmt->execute();
    }
}

//$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . "/../");
//$dotenv->load();

//$mySQL = new MySQL();
//$transaction = new Transactions($mySQL);

//print_r($transaction->getAllTransactions());
//print_r($transaction->getTransaction(175));
