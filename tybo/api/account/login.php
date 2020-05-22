<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';
include_once '../../models/Company.php';
include_once '../../models/Image.php';
include_once '../../models/Roles.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$Email = $data->email;
$Password = $data->password; 

//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate  objects
$user = new Users($db);
$company = new Company($db);
$role = new Roles($db);
$image = new Image($db);

$result = $user->getUserByEmailandPassword($Email,$Password);

$userCompany = $company->getById($result["CompanyId"] );
$dp = $image->getParentIdByIdSigle($result["UserId"] );
$roleResult = $role->getById($result["RoleId"], $result["CompanyId"]);
$result["Password"] = null;
$result["DP"] = $dp;
$result["Company"] = $userCompany;
$result["SystemRole"] = $roleResult["Name"];

echo json_encode($result);





