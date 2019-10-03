<?php
include_once '../../config/Database.php';
include_once '../../models/Parnter.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$CompanyId =$_GET['CompanyId'];


//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$parnter = new Parnter($db);

$result = $parnter->getCampanyById(
    $CompanyId
);
 
    echo json_encode($result);

 
 


