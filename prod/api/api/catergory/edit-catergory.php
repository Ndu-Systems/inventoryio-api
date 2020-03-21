<?php
include_once '../../config/Database.php';
include_once '../../models/Catergory.php';

$data = json_decode(file_get_contents("php://input"));

$CatergoryId = $data->CatergoryId;
$CompanyId = $data->CompanyId;
$Name = $data->Name;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$Catergory = new Catergory($db);

$result = $Catergory->updateCatergory(
    $CatergoryId,
    $CompanyId,
    $Name,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);

 
 


