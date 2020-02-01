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
        $sql = "SELECT * FROM users";
        foreach ($this->db->query($sql) as $key => $value) {
            print_r($value);
        }
    }
    public function getUser($id)
    {
        $sql = "SELECT * FROM users WHERE id = :id";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $result = $stmt->fetch();
        return $result;
    }
}

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . "/../");
$dotenv->load();

$mySQL = new MySQL();
$users = new Users($mySQL);

//$results = $users->getAllUsers();
print_r($users->getUser(1));
