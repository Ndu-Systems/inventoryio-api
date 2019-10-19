<?php
include_once '../../config/Database.php';
include_once '../../models/Roles.php';

$data = json_decode(file_get_contents("php://input"));

$UserId =$_GET['UserId'];

//connect to db
$database = new Database();
$db = $database->connect();

$roles = new Roles($db);

$result = $roles->getRolesByUserId($UserId);

echo json_encode($result);