<?php
include_once '../../config/Database.php';
include_once '../../models/Stores.php';

$data = json_decode(file_get_contents("php://input"));

$Name = $data->Name;
$Address = $data->Address;
$TelephoneNumber = $data->TelephoneNumber;
$CompanyId = $data->CompanyId;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

$stores = new Stores($db);
$result = $stores->add(
    $Name,
    $Address,
    $TelephoneNumber,
    $CompanyId,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);