<?php

class Transactions
{
    private $pdo;

    public function __construct(MySQL $mySQL)
    {
        $tihs->pdo = $mySQL->sendPDO();
    }
}
