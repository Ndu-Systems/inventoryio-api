<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';

$data = json_decode(file_get_contents("php://input"));
// create user data only
$Email = $data->Email;
$Name = $data->Name;
$Surname = $data->Surname;
$CellphoneNumber = $data->CellphoneNumber;
$Address = $data->Address;
$Password = $data->Password;
$CompanyName = $data->CompanyName;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;
$Description = '';
$Website = '';
$TelephoneNumber = '';
$RoleId = 3;
$CompanyId = 'this-is-customer';



//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$user = new Users($db);

$result = $user->add(
    $Email,
    $Name,
    $Surname,
    $CellphoneNumber,
    $Address,
    $Password,
    $CompanyId,
    $RoleId,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);
