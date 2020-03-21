<?php
include_once '../../config/Database.php';
include_once '../../models/Permissions.php';

$data = json_decode(file_get_contents("php://input"));

$CompanyId = $data->CompanyId;
$Name = $data->Name;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

// connect to db
$database = new Database();
$db = $database->connect();

$permission = new Permissions($db);

$result = $permission->add(
    $Name,
    $CompanyId,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);