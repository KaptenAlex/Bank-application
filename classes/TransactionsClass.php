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
        try {
            $sql = "SELECT * FROM transactions";
            $stmt = $this->db->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll();
            if ($results == false) {
                throw new \Exception("Could not get all transactions.");
            }
            return $results;
        } catch (\Exception $e) {
            echo "Error: " . $e->getMessage();
        }
    }
    public function getTransaction($id)
    {
        try {
            $sql = "SELECT * FROM transactions WHERE transaction_id = :id";
            $stmt = $this->db->prepare($sql);
            $stmt->bindParam(':id', $id);
            $stmt->execute();
            $result = $stmt->fetch();
            if ($result == false) {
                throw new \Exception("Could not get transaction.");
            }
            return $result;
        } catch (\Exception $e) {
            echo "Error: " . $e->getMessage();
        }
    }
    public function makeTransaction($data)
    {
        try {
            $sql = "INSERT INTO transactions(from_amount, from_account, from_currency,
                   to_amount, to_account, to_currency, currency_rate, date)
                   VALUES (:from_amount, :from_account, :from_currency,
                   :to_amount, :to_account, :to_currency, :currency_rate, NOW())";
            $stmt = $this->db->prepare($sql);
            $stmt->bindParam(':from_amount', $data['from_amount'], FILTER_SANITIZE_NUMBER_INT);
            $stmt->bindParam(':from_account', $data['from_account'], FILTER_SANITIZE_NUMBER_INT);
            $stmt->bindParam(':from_currency', $data['from_currency'], FILTER_SANITIZE_STRING);
            $stmt->bindParam(':to_amount', $data['to_amount'], FILTER_SANITIZE_NUMBER_INT);
            $stmt->bindParam(':to_account', $data['to_account'], FILTER_SANITIZE_NUMBER_INT);
            $stmt->bindParam(':to_currency', $data['to_currency'], FILTER_SANITIZE_STRING);
            $stmt->bindParam(':currency_rate', $data['currency_rate'], FILTER_SANITIZE_NUMBER_FLOAT);
            $stmt->execute();
        } catch (\Exception $e) {
            echo "Transaction failed: " . $e->getMessage();
        }
    }
}
