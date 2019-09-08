<?php
include_once 'headers.php';
include_once '../../common/common.php';

class Database
{
    private $isLocal = true;
    public function connect()
    {
        $conn = null;
        try {
            if ($this->isLocal) {
                $conn = new PDO('mysql:host=localhost;dbname=inventoryiodb', 'root', '');
            } else {
                $conn = new PDO('mysql:host=127.0.0.1;dbname=mnqmryug_dev', 'mnqmryug_dev', 'Harder01!');
            }

            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo json_encode($e->getMessage());
        }
        return $conn;
    }
}
 