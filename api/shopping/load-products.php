<?php
include_once '../../config/Database.php';
include_once '../../models/Product.php';
include_once '../../models/Company.php';

$data = json_decode(file_get_contents("php://input"));


//connect to db
$database = new Database();
$db = $database->connect();


// create user data only
$ProductId =$_GET['ProductId'];


//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$product = new Product($db);

$result = $product->getSigleProductWithImages(
    $ProductId
);

    


$company = new Company($db);

$resultCompany = $company->getById(
    $result["CompanyId"] 
);


$initShop = new stdClass();;
$initShop->product = $result;
$initShop->company = $resultCompany;




echo json_encode($initShop);
