<?php

//namespace classes;

require '../vendor/autoload.php';
include 'DatabaseClass.php';

class Users
{
    private $pdo;

    public function __construct(Database $pdo)
    {
        $this->pdo = $pdo;
    }
    //$this->data = $this->db->run("SELECT * FROM users WHERE id = ?", [$id])->fetch();
    public function getAllUsers()
    {
        return $this->pdo->query("SELECT * FROM users");
    }
}

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . "/../");
$dotenv->load();

$mySQL = new MySQL();
//$mySQL->connect();

$db = new Database($mySQL);
$users = new Users($db);

$results = $users->getAllUsers();
//print_r($results);
//
//foreach ($rows as $key => $value) {
//    echo $value;
//}
