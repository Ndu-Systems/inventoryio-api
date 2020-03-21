<?php
include_once '../../config/Database.php';
include_once '../../models/Stores.php';

$data = json_decode(file_get_contents("php://input"));

$StoreId = $data->StoreId;
$Name = $data->Name;
$Address = $data->Address;
$TelephoneNumber = $data->TelephoneNumber;
$CompanyId = $data->CompanyId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

$stores = new Stores($db);
$result = $stores->update(
    $StoreId,
    $Name,
    $Address,
    $TelephoneNumber,
    $CompanyId, 
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);