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
$ImageUrl = $data->ImageUrl;
$Parent = $data->Parent;
$CatergoryType = $data->CatergoryType;
$Description = $data->Description;
//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$Catergory = new Catergory($db);

$result = $Catergory->updateCatergory(
    $CatergoryId,
    $CompanyId,
    $Name,
    $ImageUrl,
    $Parent,
    $CatergoryType,
    $Description,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);
