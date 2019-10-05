<?php
include_once '../../config/Database.php';
include_once '../../models/Permissions.php';
$data = json_decode(file_get_contents("php://input"));

$CompanyId =$_GET['CompanyId'];
$StatusId =$_GET['StatusId'];

$database = new Database();
$db = $database->connect();

$permission = new Permissions($db);

$result = $permission->read($CompanyId, $StatusId);

echo json_encode($result);
