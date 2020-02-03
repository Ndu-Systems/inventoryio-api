<?php
include_once 'headers.php';

class Database
{
    private $isLocal = false;
    public function connect()
    {
        $conn = null;
        try {
            if ($this->isLocal) {
                $conn = new PDO('mysql:host=localhost;dbname=inventoryiodb', 'root', '');
            } else {
                $conn = new PDO('mysql:host=127.0.0.1;dbname=mnqmryug_testing', 'mnqmryug_testing', 'Harder01!');
              // $conn = new PDO('mysql:host=127.0.0.1;dbname=mnqmryug_prod', 'mnqmryug_prod', 'Harder01!');
            }

            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo json_encode($e->getMessage());
        }
        return $conn;
    }
}
 