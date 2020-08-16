<?php
include_once '../../config/Database.php';
include_once '../../models/Productprocess.php';

$data = json_decode(file_get_contents("php://input"));

$ProductId = $data->ProductId;
$CompanyId = $data->CompanyId;
$ProcessName = $data->ProcessName;
$Started = $data->Started;
$AssignedUser = $data->AssignedUser;
$StartDatetime = $data->StartDatetime;
$FinishDatetime = $data->FinishDatetime;
$NotifyCustomer = $data->NotifyCustomer;
$NotifyMessage = $data->NotifyMessage;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$productprocess = new Productprocess($db);

$result = $productprocess->add(
    $ProductId,
    $CompanyId,
    $ProcessName,
    $Started,
    $AssignedUser,
    $StartDatetime,
    $FinishDatetime,
    $NotifyCustomer,
    $NotifyMessage,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);


echo json_encode($result);
