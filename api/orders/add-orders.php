<?php
include_once '../../config/Database.php';
include_once '../../models/Orders.php';

$data = json_decode(file_get_contents("php://input"));

$CompanyId = $data->CompanyId;
$ParntersId = $data->ParntersId;
$OrderType = $data->OrderType;
$Total = $data->Total;
$Total = $data->Total;
$ExpectedDate = $data->ExpectedDate;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$orders = new Orders($db);

$result = $orders->add(
    $CompanyId,
    $ParntersId,
    $OrderType,
    $Total,
    $ExpectedDate,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

    
    echo json_encode($result);

 
 


