<?php
include_once '../../config/Database.php';
include_once '../../models/Brand.php';

$data = json_decode(file_get_contents("php://input"));

$BrandId = $data->BrandId;
$CompanyId = $data->CompanyId;
$Name = $data->Name;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$brand = new Brand($db);

$result = $brand->updateBrand(
    $BrandId,
    $CompanyId,
    $Name,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

    
echo json_encode($result);

 
 


