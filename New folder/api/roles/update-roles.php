<?php
include_once '../../config/Database.php';
include_once '../../models/Roles.php';

$data = json_decode(file_get_contents("php://input"));

$RoleId = $data->RoleId;
$CompanyId = $data->CompanyId;
$Name = $data->Name;  
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$roles = new Roles($db);

$result = $roles->updateRole(
    $RoleId,
    $CompanyId,
    $Name,    
    $ModifyUserId,
    $StatusId  
);

echo json_encode($result);