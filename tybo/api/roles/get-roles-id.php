<?php
include_once '../../config/Database.php';
include_once '../../models/Roles.php';

$data = json_decode(file_get_contents("php://input"));

$CompanyId =$_GET['CompanyId'];
$RoleId =$_GET['RoleId'];

//connect to db
$database = new Database();
$db = $database->connect();

$roles = new Roles($db);

$results = $roles->getById($RoleId,$CompanyId);

echo json_encode($results);
