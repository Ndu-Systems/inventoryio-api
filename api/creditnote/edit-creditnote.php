<?php
include_once '../../config/Database.php';
include_once '../../models/Creditnote.php';

$data = json_decode(file_get_contents("php://input"));


$CreditnoteId = $data->CreditnoteId;
$CompanyId = $data->CompanyId;
$OrderId = $data->OrderId;
$Total = $data->Total;
$Reason = $data->Reason;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$creditnote = new Creditnote($db);

$result = $creditnote->update(
    $CreditnoteId,
    $CompanyId,
    $OrderId,
    $Total,
    $Reason,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

    
echo json_encode($result);

 
 


