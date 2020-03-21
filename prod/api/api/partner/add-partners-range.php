<?php
include_once '../../config/Database.php';
include_once '../../models/Partner.php';

$data = json_decode(file_get_contents("php://input"));

$partners = $data->partners;
//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
foreach ($partners as $item) {
$Partner = new Partner($db);
$result = $Partner->add(
    $item->CompanyId,
    $item->PartnerType,
    $item->Name,
    $item->Surname,
    $item->CellphoneNumber,
    $item->EmailAddress,
    $item->Password,
    $item->Address,
    $item->CreateUserId,
    $item->ModifyUserId,
    $item->StatusId
);
}

    
    echo json_encode(true);

 
 


