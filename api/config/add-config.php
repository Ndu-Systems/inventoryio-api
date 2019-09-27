<?php
include_once '../../config/Database.php';
include_once '../../models/Config.php';

$data = json_decode(file_get_contents("php://input"));

$CompanyId = $data->CompanyId;
$OrderPrefix = $data->OrderPrefix;
$InvoicePrefix = $data->InvoicePrefix;
$InvoiceFooter = $data->InvoiceFooter;

$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$config = new Config($db);

$result = $config->add(
    $CompanyId,
    $OrderPrefix,
    $InvoicePrefix,
    $InvoiceFooter,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

    
    echo json_encode($result);

 
 


