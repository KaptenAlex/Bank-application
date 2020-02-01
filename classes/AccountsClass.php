<?php

require '../vendor/autoload.php';

class Accounts
{
    private $database;

    public function __construct(MySQL $mySQL)
    {
        $this->database = $mySQL->sendPDO();
    }
}
