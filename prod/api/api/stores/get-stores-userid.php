<?php

include_once '../../config/Database.php';
include_once '../../models/Stores.php';

$data = json_decode(file_get_contents("php://input"));

$UserId =$_GET['UserId'];

$database = new Database();
$db = $database->connect();

$stores = new Stores($db);

$result = $stores->getByUserId(
    $UserId
);

echo json_encode($result);
