<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';
include_once '../../models/Userroles.php';


$data = json_decode(file_get_contents("php://input"));

$UserId = $data->UserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;
$Password = $data->Password;

//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$user = new Users($db);

$result = $user->VerifyUser(
    $UserId,
    $StatusId,
    $Password
);
echo json_encode($result);

// create role
$userroles = new Userroles($db);
$userrolescreate = $userroles->add($UserId,2,$ModifyUserId,$ModifyUserId,1);


