<?php
include_once '../../config/Database.php';
include_once '../../models/Permissions.php';

$data = json_decode(file_get_contents("php://input"));

$CompanyId = $data->CompanyId;
$PermissionId = $data->PermissionId;
$Name = $data->Name; 
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

// connect to db
$database = new Database();
$db = $database->connect();

$permission = new Permissions($db);

$result = $permission->update(
    $PermissionId,
    $Name,
    $CompanyId,
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);