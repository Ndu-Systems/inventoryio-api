<?php 
include_once '../../config/Database.php';
include_once '../../models/Roles.php';

$data = json_decode(file_get_contents("php://input"));

$RoleId =$_GET['RoleId'];
$PermissionId =$_GET['PermissionId'];

//connect to db
$database = new Database();
$db = $database->connect();

$roles = new Roles($db);

$results = $roles->deleteARolePermission($RoleId, $PermissionId);

echo json_encode($results);