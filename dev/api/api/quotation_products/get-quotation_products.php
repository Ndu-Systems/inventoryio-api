<?php
include_once '../../config/Database.php';
include_once '../../models/Quotation_products.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$QuotationId =$_GET['QouteId'];


//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$quotation_products = new Quotation_products($db);

$result = $quotation_products->getBQuotationId(
    $QuotationId
);
 
    echo json_encode($result);

 
 


