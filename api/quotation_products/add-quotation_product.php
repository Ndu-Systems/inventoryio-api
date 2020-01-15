<?php
include_once '../../config/Database.php';
include_once '../../models/Quotation_products.php';

$data = json_decode(file_get_contents("php://input"));

$QuotationId = $data->QuotationId;
$ProductId = $data->ProductId;
$ProductName = $data->ProductName;
$UnitPrice = $data->UnitPrice;
$Quantity = $data->Quantity;
$subTotal = $data->subTotal;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$quotation_products = new Quotation_products($db);

$result = $quotation_products->add(
    $OrderId,
    $ProductId,
    $ProductName,
    $UnitPrice,
    $Quantity,
    $subTotal,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

    
    echo json_encode($result);

 
 


