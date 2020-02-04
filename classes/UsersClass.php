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
        try {
            $sql = "SELECT * FROM vw_users";
            $stmt = $this->db->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll();
            $encodeJson = json_encode($results);
            return $encodeJson;
        } catch (\Exception $e) {
            echo "Failed to get all users: " . $e->getMessage();
        }
    }
    public function getUser($id)
    {
        try {
            $sql = "SELECT * FROM vw_users WHERE id = :id";
            $stmt = $this->db->prepare($sql);
            $stmt->bindParam(':id', $id);
            $stmt->execute();
            $result = $stmt->fetch();
            $encodeJson = json_encode($result);
            return $encodeJson;
        } catch (\Exception $e) {
            echo "Failed to get user with id: $id: " . $e->getMessage();
        }
    }
}
