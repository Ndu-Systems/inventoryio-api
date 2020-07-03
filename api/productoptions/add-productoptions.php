<?php
include_once '../../config/Database.php';
include_once '../../models/Productoptions.php';

$data = json_decode(file_get_contents("php://input"));


$ProductId= $data->ProductId;
$CompanyId= $data->CompanyId;
$Name1= $data->Name1;
$Name2= $data->Name2;
$Name3= $data->Name3;
$Name4= $data->Name4;
$Name5= $data->Name5;
$Value1= $data->Value1;
$Value2= $data->Value2;
$Value3= $data->Value3;
$Value4= $data->Value4;
$Value5= $data->Value5;
$ImageUrl1= $data->ImageUrl1;
$ImageUrl2= $data->ImageUrl2;
$ImageUrl3= $data->ImageUrl3;
$Quantity= $data->Quantity;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$productoptions = new productoptions($db);

$result = $productoptions->add(
    $ProductId,
    $CompanyId,
    $Name1,
    $Name2,
    $Name3,
    $Name4,
    $Name5,
    $Value1,
    $Value2,
    $Value3,
    $Value4,
    $Value5,
    $ImageUrl1,
    $ImageUrl2,
    $ImageUrl3,
    $Quantity,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

    
    echo json_encode($result);

 
 


