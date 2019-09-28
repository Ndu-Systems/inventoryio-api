<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';

$data = json_decode(file_get_contents("php://input"));

$UserId = $_GET['UserId'];

// connect to db
$database = new Database();
$db = $database->connect();

$users = new Users($db);

$result = $users->getUserById($UserId);

echo json_encode($result);