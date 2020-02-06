<?php
/*
    Database class
*/
class MySQL
{
    private $hostname;
    private $username;
    private $password;
    private $dbname;
    private $port;
    private $charset;

    /*
    If no parameters are given set member variables to null,
    If they are null, get variable from .env file and set
    it to the member variables.
    */
    public function __construct(
        $hostname = null,
        $username = null,
        $password = null,
        $dbname = null,
        $port = null
    ) {
        $this->hostname = $hostname ?? getenv('DB_HOST');
        $this->username = $username ?? getenv('DB_USERNAME');
        $this->password = $password ?? getenv('DB_PASSWORD');
        $this->dbname = $dbname ?? getenv('DB_NAME');
        $this->port = $port ?? getenv('DB_PORT');
        $this->charset = $charset ?? getenv('DB_CHARSET');
    }

    /*
    Set PDO options and try to connect to Database
    by setting the DSN(Data Source Name) and inserting
    it into the new PDO object together with username,
    password and options.
    If something fails, throw a catch and
    print out error message.
    */
    public function connect()
    {
        $options = [
            \PDO::ATTR_ERRMODE            => \PDO::ERRMODE_EXCEPTION,
            \PDO::ATTR_DEFAULT_FETCH_MODE => \PDO::FETCH_ASSOC,
            \PDO::ATTR_EMULATE_PREPARES   => false,
        ];

        try {
            $dsn = "mysql:host=$this->hostname;port=$this->port;dbname=$this->dbname;charset=$this->charset";
            $pdo = new \PDO($dsn, $this->username, $this->password, $options);
            return $pdo;
        } catch (\PDOException $e) {
            echo 'Connection failed: ' . $e->getMessage();
        }
    }
}
