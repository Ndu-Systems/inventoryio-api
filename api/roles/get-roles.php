<?php
include_once '../../config/Database.php';
include_once '../../models/Roles.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$CompanyId =$_GET['CompanyId'];
$StatusId =$_GET['StatusId'];

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$roles = new Roles($db);

$result = $roles->getByCompanyId(
    $CompanyId,
    $StatusId
);

echo json_encode($result);

 
 


