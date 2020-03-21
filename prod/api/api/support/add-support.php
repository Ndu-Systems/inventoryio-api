<?php
include_once '../../config/Database.php';
include_once '../../models/support.php';

$data = json_decode(file_get_contents("php://input"));

$CompanyId = $data->CompanyId;
$UserId = $data->UserId;
$Subject = $data->Subject;
$Message = $data->Message;
$CallBack = $data->CallBack;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

$support = new Support($db);

$result = $support->add(
    $CompanyId, 
    $UserId, 
    $Subject, 
    $Message, 
    $CallBack, 
    $CreateUserId, 
    $ModifyUserId, 
    $StatusId
);

echo json_encode($result);
