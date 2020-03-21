<?php
include_once '../../config/Database.php';
include_once '../../models/Quotation.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$QuotationId =$_GET['QuotationId'];


//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$quotation = new Quotation($db);

$result = $quotation->getDetailedSingleCampanyById(
    $QuotationId
);
 
    echo json_encode($result);

 
 


