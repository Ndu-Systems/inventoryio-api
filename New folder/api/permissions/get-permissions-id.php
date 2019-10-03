<?php
include_once '../../config/Database.php';
include_once '../../models/Permissions.php';
$data = json_decode(file_get_contents("php://input"));

$PermissionId =$_GET['PermissionId'];
$CompanyId =$_GET['CompanyId'];

$database = new Database();
$db = $database->connect();

$permission = new Permissions($db);

$result = $permission->getById($PermissionId, $CompanyId);

echo json_encode($result);
