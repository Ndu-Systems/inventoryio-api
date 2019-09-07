<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';

$data = json_decode(file_get_contents("php://input"));

$UserId = $_GET['UserId'];
//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$user = new Users($db);

$result = $user->getUserToVerify($UserId);
echo json_encode($result);









