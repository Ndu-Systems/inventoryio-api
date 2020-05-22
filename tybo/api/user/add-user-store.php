<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';

$data = json_decode(file_get_contents("php://input"));

$UserId = $data->UserId;
$StoreId = $data->StoreId;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

$users = new Users($db);

$result = $users->addUserStore(
    $UserId,
    $StoreId,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);

