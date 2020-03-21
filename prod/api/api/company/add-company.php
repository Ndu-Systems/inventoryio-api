<?php
include_once '../../config/Database.php';
include_once '../../models/Company.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$Name = $data->Name;
$Website = $data->Website;
$TelephoneNumber = $data->TelephoneNumber;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$company = new Company($db);

$result = $company->add(
    $Name,
    $Website,
    $TelephoneNumber,
    $CreateUserId,
    $ModifyUserId,
    $StatusId     
);

    
    echo json_encode($result);

 
 


