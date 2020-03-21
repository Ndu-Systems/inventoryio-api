<?php
include_once '../../config/Database.php';
include_once '../../models/Roles.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$CompanyId = $data->CompanyId;
$Name = $data->Name; 
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
// create user first to get UserId
$roles = new Roles($db);

$result = $roles->add(
    $CompanyId,
    $Name,
    $CreateUserId,
    $ModifyUserId,
    $StatusId   
);

    
    echo json_encode($result);

 
 


