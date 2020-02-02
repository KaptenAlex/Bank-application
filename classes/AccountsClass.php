<?php

require '../vendor/autoload.php';
include 'MySqlClass.php';

class Accounts
{
    private $db;

    public function __construct(MySQL $mySQL)
    {
        $this->db = $mySQL->connect();
    }
    public function getAllAccounts()
    {
        $sql = "SELECT * FROM account";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        $results = $stmt->fetchAll();
        return $results;
    }
    public function getAccount($id)
    {
        $sql = "SELECT * FROM account WHERE id = :id";
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
//$accounts = new Accounts($mySQL);

//print_r($accounts->getAllAccounts());
//print_r($accounts->getAccount(2));
