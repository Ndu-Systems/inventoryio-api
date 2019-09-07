<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$Email = $data->Email;
$Name = $data->Name;
$Surname = $data->Surname;
$CellphoneNumber = $data->CellphoneNumber;
$Password = $data->Password; 
$CompanyId = $data->CompanyId; 
$RoleId = $data->RoleId; 
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;
$UserId = $data->UserId;
 
//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$user = new Users($db);

$result = $user->updateUser(
    $Email,
    $Name,
    $Surname,
    $CellphoneNumber,
    $Password,
    $CompanyId,
    $RoleId,
    $ModifyUserId,
    $StatusId,
    $UserId
);

    
    echo json_encode($result);

 
 


