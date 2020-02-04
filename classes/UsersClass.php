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
        $encodeJson = json_encode($results);
        return $encodeJson;
    }
    public function getUser($id)
    {
        $sql = "SELECT * FROM vw_users WHERE id = :id";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $result = $stmt->fetch();
        $encodeJson = json_encode($result);
        return $encodeJson;
    }
}
