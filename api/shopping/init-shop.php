<?php
include_once '../../config/Database.php';
include_once '../../models/Product.php';
include_once '../../models/Company.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$CompanyId = $_GET['CompanyId'];


//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$product = new Product($db);

// $result = $product->getDetailedProduct(
//     $CompanyId
// );
//check if it the Handler
$company = $product->getCompanyByHandler(
    $CompanyId
);

if ($company) {

    $CompanyId = $company['CompanyId'];
}


$result = $product->getDetailedProductWithImages(
    $CompanyId
);

$company = new Company($db);

$resultCompany = $company->getById(
    $CompanyId   
);


$initShop = new stdClass();;
$initShop->products = $result;
$initShop->company = $resultCompany;




echo json_encode($initShop);
