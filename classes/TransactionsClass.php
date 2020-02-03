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
        $sql = "INSERT INTO transactions(from_amount, from_account, from_currency,
               to_amount, to_account, to_currency, currency_rate, date)
               VALUES (:from_amount, :from_account, :from_currency,
               :to_amount, :to_account, :to_currency, :currency_rate, :date)";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':from_amount', $data['from_amount']);
        $stmt->bindParam(':from_account', $data['from_account']);
        $stmt->bindParam(':from_currency', $data['from_currency']);
        $stmt->bindParam(':to_amount', $data['to_amount']);
        $stmt->bindParam(':to_account', $data['to_account']);
        $stmt->bindParam(':to_currency', $data['to_currency']);
        $stmt->bindParam(':currency_rate', $data['currency_rate']);
        $stmt->bindParam(':date', $data['date']);
        $stmt->execute();
    }
}

//$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . "/../");
//$dotenv->load();

//$mySQL = new MySQL();
//$transaction = new Transactions($mySQL);

//print_r($transaction->getAllTransactions());
//print_r($transaction->getTransaction(175));
