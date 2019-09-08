<?php
include_once '../../config/Database.php';
include_once '../../models/Product.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$Name = $data->Name;
$Description = $data->Description;
$UnitPrice = $data->UnitPrice;
$Code = $data->Code;
$SKU = $data->SKU;
$StockPrice = $data->StockPrice;
$Quantity = $data->Quantity;
$LowStock = $data->LowStock;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$product = new Product($db);

$result = $product->add(
    $Name,
    $Description,
    $UnitPrice,
    $Code,
    $SKU,
    $StockPrice,
    $Quantity,
    $LowStock,
    $CreateUserId,
    $ModifyUserId,
    $StatusId  
);

    
    echo json_encode($result);

 
 


