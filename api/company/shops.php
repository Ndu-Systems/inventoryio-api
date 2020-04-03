<?php
include_once '../../config/Database.php';
include_once '../../models/Company.php';

$data = json_decode(file_get_contents("php://input"));
//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$company = new Company($db);

$result = $company->getAll();
echo json_encode($result);