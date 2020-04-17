<?php
include_once '../../config/Database.php';
include_once '../../models/Company.php';

$data = json_decode(file_get_contents("php://input"));

$CompanyId =$_GET['CompanyId'];
$database = new Database();
$db = $database->connect();

$company = new Company($db);

$result = $company->getById(
    $CompanyId   
);

echo json_encode($result);