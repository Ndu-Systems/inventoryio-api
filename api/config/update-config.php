<?php
include_once '../../config/Database.php';
include_once '../../models/Config.php';

$data = json_decode(file_get_contents("php://input"));

$ConfigId = $data->ConfigId;
$CompanyId = $data->CompanyId;
$Name = $data->Name;
$Value = $data->Value;

$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$config = new Config($db);

$result = $config->update(
    $ConfigId,
    $CompanyId,
    $Name,
    $Value,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);


echo json_encode($result);
