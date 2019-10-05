<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';
include_once '../../models/Company.php';
include_once '../../models/Image.php';

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
$image = new Image($db);

$result = $user->getUserByEmailandPassword($Email,$Password);

$userCompany = $company->getById($result["CompanyId"] );
$dp = $image->getById($result["UserId"] );

$result["DP"] = $dp;
$result["Company"] = $userCompany;

echo json_encode($result);





