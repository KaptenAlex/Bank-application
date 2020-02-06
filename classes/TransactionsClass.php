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
    public function makeTransaction($data)
    {
        try {
            $sqlSender = "SELECT balance FROM vw_users WHERE :from_account_id = account_id";
            $statement = $this->db->prepare($sqlSender);
            $statement->bindParam(':from_account_id', $data['from_account'], FILTER_SANITIZE_NUMBER_INT);
            if (!($statement->execute())) {
                throw new \Exception("Sender doesn't have an account.");
            } elseif ($statement->execute()) {
                $sender = $statement->fetch();
            }
            try {
                $sqlRecipient = "SELECT * FROM users WHERE :to_account_id = id";
                $statement = $this->db->prepare($sqlRecipient);
                $statement->bindParam(':to_account_id', $data['to_account'], FILTER_SANITIZE_NUMBER_INT);
                if (!($statement->execute())) {
                    throw new \Exception("Couldn't find recipient");
                } elseif ($statement->execute()) {
                    $statement->fetch();
                }
                try {
                    $sql = "INSERT INTO transactions(from_amount, from_account, from_currency,
                           to_amount, to_account, to_currency, currency_rate, date)
                           VALUES (:from_amount, :from_account, 'SEK',
                           :to_amount, :to_account, 'SEK', 1, NOW())";
                    $stmt = $this->db->prepare($sql);
                    $stmt->bindParam(':from_amount', $data['from_amount'], FILTER_SANITIZE_NUMBER_INT);
                    $stmt->bindParam(':from_account', $data['from_account'], FILTER_SANITIZE_NUMBER_INT);
                    $stmt->bindParam(':to_account', $data['to_account'], FILTER_SANITIZE_NUMBER_INT);
                    $stmt->bindParam(':to_amount', $data['from_amount'], FILTER_SANITIZE_NUMBER_INT);
                    if (intval($data['from_amount']) <= 0) {
                        throw new \Exception("The amount sent is less or equal zero.");
                    }
                    if (intval($data['from_amount']) > intval($sender['balance'])) {
                        throw new \Exception("Balance is less than amount sent");
                    }
                    $stmt->execute();
                    return "Successful";
                } catch (\Exception $e) {
                    echo "Transaction failed: " . $e->getMessage();
                }
            } catch (\Exception $e) {
                echo "Error: " . $e->getMessage();
            }
        } catch (\Exception $e) {
            echo "Error: " . $e->getMessage();
        }
    }
}
