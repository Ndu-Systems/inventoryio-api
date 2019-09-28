<?php
include_once '../../config/Database.php';
include_once '../../models/Orders.php';

$data = json_decode(file_get_contents("php://input"));

$OrderId = $data->OrderId;
$CompanyId = $data->CompanyId;
$ParntersId = $data->ParntersId;
$OrderType = $data->OrderType;
$Total = $data->Total;
$Paid = $data->Paid;
$Due = $data->Due;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$orders = new Orders($db);

$result = $orders->add(
    $OrderId,
    $CompanyId,
    $ParntersId,
    $OrderType,
    $Total,
    $Paid,
    $Due,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

    
    echo json_encode($result);

 
 


