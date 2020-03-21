<?php
include_once '../../config/Database.php';
include_once '../../models/Roles.php';

$data = json_decode(file_get_contents("php://input"));

$RoleId = $data->RoleId;
$PermissionId = $data->PermissionId;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

$roles = new Roles($db);

$result = $roles->addRolePermission(
    $RoleId,
    $PermissionId,
    $CreateUserId,
    $ModifyUserId,
    $StatusId    
);

echo json_encode($result);