<?php
namespace App\Database;

use PDO;
class Database
{
    public static function connect()
    {
        $db = new PDO("mysql:host=localhost;dbname=php_darslar", "root", "root");
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $db;
    }
}