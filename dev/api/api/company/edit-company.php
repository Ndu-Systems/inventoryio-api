<?php
include_once '../../config/Database.php';
include_once '../../models/Company.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$CompanyId = $data->CompanyId;
$Name = $data->Name;
$Website = $data->Website;
$TelephoneNumber = $data->TelephoneNumber; 
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

$company = new Company($db);

$result = $company->updateCompany(
    $CompanyId,
    $Name,
    $Website,
    $TelephoneNumber,
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);