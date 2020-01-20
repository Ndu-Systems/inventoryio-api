<?php
include_once '../../config/Database.php';
include_once '../../models/Product.php';
include_once '../../models/Image.php';


$data = json_decode(file_get_contents("php://input"));

// create user data only
$CompanyId =$_GET['CompanyId'];


//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$product = new Product($db);
$image = new Image($db);


$result = $product->getCampanyById(
    $CompanyId
);

$url = $image->getParentIdByIdSigle($result["UserId"] );
// $result["Url"] = $url;



    
    echo json_encode($result);

 
 


