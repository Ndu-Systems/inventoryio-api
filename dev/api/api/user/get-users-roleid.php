<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';

$data = json_decode(file_get_contents("php://input"));

$RoleId = $_GET['RoleId'];

// connect to db
$database = new Database();
$db = $database->connect();

$users = new Users($db);

$result = $users->getUsersByRoleId($RoleId);

echo json_encode($result);