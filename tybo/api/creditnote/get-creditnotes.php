<?php
include_once '../../config/Database.php';
include_once '../../models/Creditnote.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$OrderId =$_GET['OrderId'];


//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$creditnote = new Creditnote($db);

$result = $creditnote->getByOrderId(
    $OrderId
);
 
    echo json_encode($result);

 
 


