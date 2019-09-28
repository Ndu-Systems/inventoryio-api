<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$Email = $data->email;
$Password = $data->password; 

//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object
$user = new Users($db);

$result = $user->getUserByEmailandPassword($Email,$Password);
echo json_encode($result);





