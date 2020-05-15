<?php
include_once '../../config/Database.php';
include_once '../../models/Partner.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$PartnerId =$_GET['PartnerId'];


//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$partner = new Partner($db);

$result = $partner->getByPartnerId(
    $PartnerId
);
 
    echo json_encode($result);

 
 


