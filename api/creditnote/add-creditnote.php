<?php
include_once '../../config/Database.php';
include_once '../../models/Creditnote.php';

$data = json_decode(file_get_contents("php://input"));


$CompanyId = $data->CompanyId;
$OrderId = $data->OrderId;
$Total = $data->Total;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$creditnote = new Creditnote($db);

$result = $creditnote->add(
    $CompanyId,
    $OrderId,
    $Total,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

    
echo json_encode($result);

 
 


