<?php

//namespace classes;

require '../vendor/autoload.php';
include 'MySqlClass.php';

class Database
{
    private $database;

    public function __construct(MySQL $mySQL)
    {
        $this->database = $mySQL;
    }
    //public function getAllUsers()
    //{
    //    return $this->database->query("SELECT * FROM users");
    //}
}

//$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . "/../");
//$dotenv->load();
//
//$mySQL = new MySQL();
//$db = new Database($mySQL);
//$db->getAllUsers();
