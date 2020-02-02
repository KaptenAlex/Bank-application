<?php

require '../vendor/autoload.php';
include 'MySqlClass.php';

class Users
{
    private $db;

    public function __construct(MySQL $mySQL)
    {
        $this->db = $mySQL->connect();
    }
    public function getAllUsers()
    {
        $sql = "SELECT * FROM vw_users";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        $results = $stmt->fetchAll();
        return $results;
    }
    public function getUser($id)
    {
        $sql = "SELECT * FROM vw_users WHERE id = :id";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $result = $stmt->fetch();
        return $result;
    }
    //public function getUserAndSetSession($id)
    //{
    //    $user = $this->getUser($id);
    //    session_start();
    //    $_SESSION = $user;
    //    return $_SESSION;
    //}
}

//$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . "/../");
//$dotenv->load();

//$mySQL = new MySQL();
//$users = new Users($mySQL);

//print_r($users->getAllUsers());
//print_r($users->getUserAndSetSession(1));
