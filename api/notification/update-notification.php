<?php
include_once '../../config/Database.php';
include_once '../../models/Notification.php';

$data = json_decode(file_get_contents("php://input"));

$Id = $data->Id;
$OtherId = $data->OtherId;
$Type = $data->Type;
$Message = $data->Message;
$Channel = $data->Channel;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$notification = new Notification($db);

$result = $notification->update(
    $Id,
    $OtherId,
    $Type,
    $Message,
    $Channel,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);


echo json_encode($result);
