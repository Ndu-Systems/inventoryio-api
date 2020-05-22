<?php
include_once '../../config/Database.php';
include_once '../../models/Company.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$CompanyId = $data->CompanyId;
$Name = $data->Name;
$Description = $data->Description;
$Type = $data->Type;
$Shop = $data->Shop;
$Handler = $data->Handler;
$Website = $data->Website;
$TelephoneNumber = $data->TelephoneNumber; 
$Prefix = $data->Prefix; 
$ParentId = $data->ParentId; 
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

$company = new Company($db);

$result = $company->updateCompany(
    $CompanyId,
    $Name,
    $Description,
    $Type,
    $Shop,
    $Handler,
    $Website,
    $TelephoneNumber,
    $Prefix,
    $ParentId,
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);