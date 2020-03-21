<?php
include_once '../../config/Database.php';
include_once '../../models/Partner.php';

$data = json_decode(file_get_contents("php://input"));

$PartnerId = $data->PartnerId;
$CompanyId = $data->CompanyId;
$PartnerType = $data->PartnerType;
$Name = $data->Name;
$Surname = $data->Surname;
$CellphoneNumber = $data->CellphoneNumber;
$EmailAddress = $data->EmailAddress;
$Password = $data->Password;
$Address = $data->Address;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$Partner = new Partner($db);

$result = $Partner->update(
    $PartnerId,
    $CompanyId,
    $PartnerType,
    $Name,
    $Surname,
    $CellphoneNumber,
    $EmailAddress,
    $Password,
    $Address,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

    
    echo json_encode($result);

 
 


