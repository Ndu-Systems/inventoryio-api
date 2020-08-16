<?php
include_once '../../config/Database.php';
include_once '../../models/Productoptions.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$ProductId =$_GET['ProductId'];


//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$productoptions = new productoptions($db);

$result = $productoptions->getByProductId(
    $ProductId
);
 
    echo json_encode($result);

 
 


