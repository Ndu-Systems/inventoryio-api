<?php
include_once '../../config/Database.php';
include_once '../../models/Quotation.php';

$data = json_decode(file_get_contents("php://input"));

$CompanyId = $data->CompanyId;
$ParntersId = $data->ParntersId;
$OrderType = $data->OrderType;
$Total = $data->Total;
$Paid = $data->Paid;
$Due = $data->Due;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$Status = $data->Status;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$quotation = new Quotation($db);

$result = $quotation->add(
    $CompanyId,
    $ParntersId,
    $OrderType,
    $Total,
    $Paid,
    $Due,
    $CreateUserId,
    $ModifyUserId,
    $Status,
    $StatusId
);

    
    echo json_encode($result);

 
 


